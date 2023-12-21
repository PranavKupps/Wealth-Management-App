//
//  Capitol.swift
//  RoboAdviser
//

import SwiftUI

struct Capitol: View {
    
    @State var goToRisk = false
    @State var user = User()
    @State private var capitol: String = ""
    @State var goToAge: Bool = false;
    
    var body: some View {
        VStack{
            Spacer()
            Text("How much are you investing?")
                .fontWeight(.bold)
                .font(.title)
                .padding(.horizontal)
                .foregroundColor(royalBlueColor)
            Spacer()
            Spacer()
            Spacer()
            //Spacer()
            TextField("Capitol (in $)", text: $capitol)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .disableAutocorrection(true)
            
            
            
            Button(action: {
                user.capitol = Int(capitol) ?? 0
                goToAge = true
            }) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 375, height: 60)
                    .background(royalBlueColor)
                    .cornerRadius(15.0)
            }.padding()
            NavigationLink(destination: Age(user: user), isActive: $goToAge) {
                EmptyView()
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
    
}

struct Capitol_Previews: PreviewProvider {
    static var previews: some View {
        Capitol(user: User())
    }
}
