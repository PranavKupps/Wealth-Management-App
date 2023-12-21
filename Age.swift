//
//  Age.swift
//  RoboAdviser
//

import SwiftUI

struct Age: View {
    
    @State var goToCapitol = false
    @State var user = User()
    
    var body: some View {
        
        
        VStack{
            Spacer()
            Text("What is your age?")
                .fontWeight(.bold)
                .font(.title)
                .padding(.horizontal)
                .foregroundColor(royalBlueColor)
            Spacer()
            Spacer()
            
        }
        
        
        Button(action: {
            user.score = 3
            //putWorker()
            goToCapitol = true
        }) {
            Text("18-24")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk(user: user), isActive: $goToCapitol) {
            EmptyView()
        }
        Button(action: {
            user.score = 2
            //putWorker()
            goToCapitol = true
        }) {
            Text("25-40")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk(user: user), isActive: $goToCapitol) {
            EmptyView()
        }
        Button(action: {
            user.score = 1
            //putWorker()
            goToCapitol = true
        }) {
            Text("40-65")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk(user: user), isActive: $goToCapitol) {
            EmptyView()
        }
        Button(action: {
            user.score = 0
            goToCapitol = true
        }) {
            Text("65+")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk(user: user), isActive: $goToCapitol) {
            EmptyView()
        }
        .navigationBarHidden(true)
        
    }
    
}

struct Age_Previews: PreviewProvider {
    static var previews: some View {
        Age(user: User())
    }
}
