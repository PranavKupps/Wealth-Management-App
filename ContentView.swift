//
//  ContentView.swift
//  RoboAdviser
//

import SwiftUI

let royalBlueColor = Color(red: 29.0/255.0, green: 73.0/255.0, blue: 153.0/255.0,
                           opacity: 1.0)
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0,
                           opacity: 1.0)
let darkGreyColor = Color(red: 89/255.0, green: 89/255.0, blue: 89/255.0, opacity: 1.0)

struct ContentView: View {
    
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationFailed: Bool = false
    @State var showUserView = false
    
    @State var users = [User]()
    @State var user = User()
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("logo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220, height: 220)
                    //.clipShape(Circle())
                    .padding()
                
                Spacer()
                TextField("Email", text: $username)
                    .padding(20)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .disableAutocorrection(true)
                SecureField("Password", text: $password)
                    .padding(20)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                    .disableAutocorrection(true)
                
                if(authenticationFailed) {
                    Text("Information not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    for user in users {
                        var x = print("test");
                        if(username.uppercased() == user.email.uppercased() && password == user.password) {
                            showUserView = true
                            self.user = user
                        }
                    }
                    //showUserView = true;
                    if(!showUserView) {
                        authenticationFailed = true
                    }
                    
                }) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(royalBlueColor)
                        .cornerRadius(15.0)
                }
                NavigationLink(destination: Dashboard(user: user), isActive: $showUserView) {
                    EmptyView()
                }
                Spacer()
                Spacer()
            }
        }.onAppear(perform: loadUserData)
    }
    
    
    
    
    func loadUserData() {
            guard let url = URL(string: "http://127.0.0.1:8080/api/user2") else {
                print("Invalid URL")
                return
            }
            let request = URLRequest(url: url)

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    if let response = try? JSONDecoder().decode([User].self, from: data) {
                        DispatchQueue.main.async {
                            self.users = response
                            //var z = print("test");
                        }
                        return
                    }
                }
            }.resume()
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
