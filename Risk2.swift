//
//  Risk2.swift
//  RoboAdviser
//

import SwiftUI

struct Risk2: View {
    @State var goToSummary = false
    @State var user = User()
    
    var body: some View {
        VStack{
            Spacer()
            Text("What would you do if your portfolio dropped by 25%?")
                .fontWeight(.bold)
                .font(.title)
                .padding(.horizontal)
                .foregroundColor(royalBlueColor)
            Spacer()
            Spacer()
            
        }
        
        Button(action: {
            user.score += 0
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
        NavigationLink(destination: Conclusion(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        
        Button(action: {
            user.score += 2
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
        NavigationLink(destination: Conclusion(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        
        Button(action: {
            user.score += 3
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
        NavigationLink(destination: Conclusion(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        Button(action: {
            user.score += 5
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
        NavigationLink(destination: Conclusion(user: user), isActive: $goToSummary) {
            EmptyView()
        }
        .navigationBarHidden(true)
        
    }
    
    
}

struct Risk2_Previews: PreviewProvider {
    static var previews: some View {
        Risk2(user: User())
    }
}
