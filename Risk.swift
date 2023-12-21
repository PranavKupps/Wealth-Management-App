//
//  Risk.swift
//  RoboAdviser
//

import SwiftUI

struct Risk: View {
    
    @State var goToSummary = false
    @State var user = User()
    
    var body: some View {
        VStack{
            Spacer()
            Text("What would you do if your portfolio dropped by 10%?")
                .fontWeight(.bold)
                .font(.title)
                .padding(.horizontal)
                .foregroundColor(royalBlueColor)
            Spacer()
            Spacer()
            
        }
        
        Button(action: {
            user.score += 0
            //putWorker()
            goToSummary = true
        }) {
            Text("Sell all of my portfolio and move to cash")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk2(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        
        Button(action: {
            user.score += 3
            //putWorker()
            goToSummary = true
        }) {
            Text("Sell some assets and keep others")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk2(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        
        Button(action: {
            user.score += 4
            //putWorker()
            goToSummary = true
        }) {
            Text("Do nothing")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk2(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        Button(action: {
            user.score += 5
            //putWorker()
            goToSummary = true
        }) {
            Text("Buy more assets")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 375, height: 60)
                .background(royalBlueColor)
                .cornerRadius(15.0)
        }.padding()
        NavigationLink(destination: Risk2(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        .navigationBarHidden(true)
        
    }
}

struct Risk_Previews: PreviewProvider {
    static var previews: some View {
        Risk(user: User())
    }
}
