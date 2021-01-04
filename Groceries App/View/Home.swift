//
//  Home.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct Home: View {
    
    @State var txt = ""
    
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("mahesh").renderingMode(.original).resizable().frame(width: 30, height: 30)
                
                Text("Hi, Kavsoft")
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("filter").renderingMode(.original)
                })
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 15) {
                    HStack(spacing: 15) {
                        HStack{
                            Image(systemName: "magnifyingglass").font(.body)
                            
                            TextField("Search Groceries", text: $txt)
                        }.padding(10)
                        .background(Color("Color1"))
                        .cornerRadius(20)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("mic").renderingMode(.original)
                        })
                    }
                    
                    Image("top").resizable().overlay(
                        
                        VStack{
                            Spacer()
                            
                            HStack{
                                Text("GET 20% OFF").font(.title).foregroundColor(.white)
                                Spacer()
                            }.padding()
                        }
                    )
                    
                    HStack{
                        Text("Categories").font(.title)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("More")
                        }).foregroundColor(Color("Color"))
                    }.padding(.vertical, 15)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 15) {
                            ForEach(categories, id:\.self) { i in
                                VStack{
                                    Image(i).renderingMode(.original)
                                    Text(i)
                                }
                            }
                        }
                    })
                    
                    HomeBottomView()
                    
                }
            })
        }.padding(.horizontal)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
