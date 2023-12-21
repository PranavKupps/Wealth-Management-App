//
//  Conclusion.swift
//  RoboAdviser
//

import SwiftUI

struct Conclusion: View {
    
    @State var user = User()
    @State private var stockAlloc: Double = 55.0;
    @State private var spyAlloc: Double = 0.0;
    @State private var spyStockAmt: Double = 0.0;
    @State private var nasAlloc: Double = 0.0;
    @State private var nasStockAmt: Double = 0.0;
    @State private var bondAlloc: Double = 0.0;
    @State private var cashAlloc: Double = 0.0;
    var body: some View {
        VStack{
            HStack {
                //Spacer()
                NavigationLink (destination: Dashboard(user: user)) {
                    HStack {
                        VStack {
                            Image("logo2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                                .padding(.horizontal)
                        }
                    }
                }
                Spacer()
                Text("Asset Allocation")
                    .fontWeight(.bold)
                    .frame(height: 35)
                    .font(.title2)
                    .padding(.horizontal)
                    .foregroundColor(royalBlueColor)
                
                
                Spacer()
                Spacer()
                Spacer()
                
            }
            
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Text("Stocks: \(Int(stockAlloc))% of $\(user.capitol)")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.horizontal)
                        .foregroundColor(royalBlueColor)
                }
                Spacer()
            }
            Divider()

            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("SPY: $\(Int(spyAlloc))")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding(.horizontal)
                        .foregroundColor(royalBlueColor)
                    HStack {
                        Spacer()
                        Text("\(Int(spyStockAmt)) shares at $397.50 per share")
                        //.fontWeight(.bold)
                            .font(.headline)
                            .padding(.horizontal)
                            .foregroundColor(royalBlueColor)
                        Spacer()
                    }
                    
                }
                Spacer()
                Spacer()
                Spacer()
            }
            Divider()
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("QQQ: $\(Int(nasAlloc))")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding(.horizontal)
                        .foregroundColor(royalBlueColor)
                    HStack {
                        Spacer()
                        Text("\(Int(nasStockAmt)) shares at $96.32 per share")
                        //.fontWeight(.bold)
                            .font(.headline)
                            .padding(.horizontal)
                            .foregroundColor(royalBlueColor)
                        Spacer()
                    }
                    
                }
                Spacer()
                Spacer()
                Spacer()
            }
            Divider()
            
            Spacer()
            Group {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Bonds: \(90 - Int(stockAlloc))% of $\(user.capitol)")
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding()
                            .foregroundColor(royalBlueColor)
                    }
                    Spacer()
                }
                Divider()
                
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("You should invest $\(Int(bondAlloc)) in bonds")
                            .fontWeight(.bold)
                            .font(.headline)
                            .padding(.horizontal)
                            .foregroundColor(royalBlueColor)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                Divider()
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Cash: 10% of $\(user.capitol)")
                            .fontWeight(.bold)
                            .font(.title3)
                            .padding()
                            .foregroundColor(royalBlueColor)
                    }
                    Spacer()
                }
                Divider()
                Group{
                    HStack {
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("You should keep $\(Int(cashAlloc)) in cash")
                                .fontWeight(.bold)
                                .font(.headline)
                                .padding(.horizontal)
                                .foregroundColor(royalBlueColor)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    Divider()
                }
                //Spacer()
                Spacer()
                Spacer()
                
            } //group
            
        }.onAppear(perform: calcAlloc)
        
        
        .navigationBarBackButtonHidden()
    }
    
    func calcAlloc() {
        stockAlloc = stockAlloc + (0.80 * Double(user.score));
        spyAlloc = (stockAlloc / 100) * Double(user.capitol) * 0.6
        nasAlloc = (stockAlloc / 100) * Double(user.capitol) * 0.4
        
        spyStockAmt = spyAlloc / 397.5;
        nasStockAmt = nasAlloc / 96.32;
        bondAlloc = ((90 - stockAlloc)/100) * Double(user.capitol)
        cashAlloc = 0.10 * Double(user.capitol)
        putWorker()
    }
    func putWorker() {
        
        guard let encoded = try? JSONEncoder().encode(user) else {
            print("Failed to encode order")
            return
        }
        let resourceURL = "http://localhost:8080/api/user2/\(user.id)"
        let url = URL(string: resourceURL)!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "PUT"
        request.httpBody = encoded
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error").")
                return
            }
            if (try? JSONDecoder().decode(User.self, from: data)) != nil {
                print("Succesfully Updated!")
            }
            else {
                print("Invalid response")
            }
            
        }.resume()
    }
    
    
}

struct Conclusion_Previews: PreviewProvider {
    static var previews: some View {
        Conclusion(user: User())
    }
}
