//
//  Dashboard.swift
//  RoboAdviser
//

import SwiftUI

struct Dashboard: View {
    
    @State var user = User()
    
    var body: some View {
        VStack {
            Group { //header
                HStack {
                    Image("logo2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .padding(.horizontal)
                    Spacer()
                    
                    Text("Dashboard")
                        .fontWeight(.bold)
                        .frame(height: 35)
                        .font(.title2)
                        .padding(.horizontal)
                        .foregroundColor(royalBlueColor)
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }//HStack
            }//group
            
            //Spacer()
            Divider()
            HStack {//row of links
                
                VStack { //allocation
                    Image("news")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                    Text("My News")
                        .foregroundColor(royalBlueColor)
                        
                    
                }.padding()//allocation
                
                NavigationLink(destination: Capitol(user: user)) {
                    VStack { //goals
                        Image("goals")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        Text("Change Goals")
                            .foregroundColor(royalBlueColor)
                            
                        
                    }//goals
                        
                }.padding() //navigationLink
                
                NavigationLink(destination: Conclusion(user: user)) {
                    VStack { //news
                        Image("alloc")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        Text("Allocation")
                            .foregroundColor(royalBlueColor)
                            
                        
                    }//news
                        
                }.padding() //navigationLink
                
                
            }//row of links
            Divider()
            
            
            VStack {
                HStack {//market
                    Text("Markets:")
                        .font(.headline)
                        .foregroundColor(royalBlueColor)
                        .padding(.horizontal)
                    Spacer()
                }//market
                //Divider() //S&P
                HStack {
                    Text("S&P 500")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                    Text("$397.50")
                        .font(.headline)
                        .padding(5)
                
                }
                
                Divider() //Nasdaq
                HStack {
                    Text("Nasdaq 100")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                    Text("$96.32")
                        .font(.headline)
                        .padding(5)
                
                }
                
                Divider() //Gold
                HStack {
                    Text("Gold")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        
                    Spacer()
                    Text("$1820.30")
                        .font(.headline)
                        .padding(5)
                
                }
                Divider()
            }
            
            
            ScrollView { //can scroll through news
                HStack {//news label
                    Text("Trending News")
                        .font(.headline)
                        .foregroundColor(royalBlueColor)
                        .padding(.horizontal)
                    Spacer()
                }//news label
                
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
                VStack(alignment: .leading) { //fintech conference
                    //Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Michigan Fintech Conference")
                                .font(.headline)
                                //.frame(width: 300)
                                .padding(.horizontal)
                                
                            Text("The Michigan Fintech conference is set to kick off on March 9, 2023")
                                //.frame(width: 300)
                                .padding(.horizontal)
                        }
                        Spacer()
                        Image("logo3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal)
                    }
                    Divider()

                }
               
                
                
                
            }//scrollview
            Spacer()
            Spacer()
            
            
        }//Vstack
        .navigationBarBackButtonHidden()
        
    } //body
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard(user: User())
    }
}
