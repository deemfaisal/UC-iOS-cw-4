//
//  ContentView.swift
//  CW4
//
//  Created by Deem on 12/09/2022.
//

import SwiftUI


struct ContentView: View {
    
    
    
    @State var newitem = ""
    
    
    @State var coffee = [ "Iced Americano" , "Iced Latte" , "Iced Caramel macchiato" , "Iced Matcha Rose Latte", "Iced Mocha", "Hot Americano", "Cortado", "Espresso", "V60", "Flat white" ]
    
    let order1 = ["Iced Hazelnut latte", "Iced Spanish latte", "Iced Coconut latte"]


    var body: some View {
        
        ZStack {
            
            Color(.gray)
                .opacity(0.4)
                .ignoresSafeArea()
           
            VStack {
                
                Text(" Hot & Iced Drinks               ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                
                
                List (coffee, id: \.self) {item in
                    HStack {
                        
                        Image(item)
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .top)
                            .cornerRadius(20)
                        
                        Text(item)
                            .font(Font.custom("PlayFair", size: 20))
                            .bold()
                            
                        
                        
                    }
                    
                
                    
                    
                }
               
                HStack {
                    
                   
                     
                    Button(action: { coffee.insert(newitem, at: 9)
                        
                    }) {   Image(systemName: "plus.app.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .padding()
                    }
                   
                    TextField("add extra item", text: $newitem)
                    
                    Button(action: { coffee.remove(at: 0)
                        
                    }) {   Image(systemName: "minus.square.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                
                    }
                    
                    Button(action: {
                        let random = order1.randomElement() ?? ""; coffee.append(random)
                        
                    }) {   Image(systemName: "questionmark.app.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .padding()
                    }
                    
                }
                
            }

            
            

            
            
            
            
        
        
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
