//
//  Detail.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct Detail: View {
    
    @Binding var show : Bool
    @State var top = UIApplication.shared.windows.last?.safeAreaInsets.top
    @State var count = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Image("header")
                .resizable()
                .frame(height: UIScreen.main.bounds.height / 2.5)
                .edgesIgnoringSafeArea(.top)
                .overlay(
                    VStack{
                        HStack(spacing: 12) {
                            Button(action: {
                                self.show.toggle()
                            }, label: {
                                Image("back").renderingMode(.original)
                            })
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image("download").renderingMode(.original)
                            })
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image("Wishlist").renderingMode(.original)
                            })
                            
                        }.padding()
                        
                        Spacer()
                    }
                )
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 15, content: {
                    Text("Seedless Lemon").font(.title)
                    
                    Text("30.00 / kg").foregroundColor(.green)
                    
                    Divider().padding(.vertical, 15)
                    
                    HStack {
                        Image("rp1").renderingMode(.original)
                        
                        Text("Diana Organic Farm")
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("chat").renderingMode(.original)
                        })
                    }
                    
                    Text("Organic seedless lemon will enhance the flavor of all your favorite recipes, including chicken, fish, vegetables, and soups without the hassle of picking out the seeds. They are also fantastic in marinades, sauces, and fruit salads.").foregroundColor(.gray)
                    
                    HStack{
                        Text("Reviews (48)")
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("More")
                        }).foregroundColor(Color("Color"))
                    }.padding(.vertical, 10)
                    
                    HStack{
                        Image("rp2").renderingMode(.original)
                        
                        VStack(alignment: .leading, spacing: 6, content: {
                            HStack{
                                Text("4")
                                Image(systemName: "star.fill").foregroundColor(.yellow)
                            }
                            
                            Text("Oh Yeon Seo")
                            Text("The Lemon is So Fresh And Delivery is So Speed....")
                            
                        })
                    }.padding()
                    .background(Color("Color1"))
                    .cornerRadius(12)
                    
                    HStack(spacing: 20) {
                        Spacer(minLength: 12)
                        
                        Button(action: {
                            self.count += 1
                        }, label: {
                            Image(systemName: "plus.circle").font(.largeTitle)
                        }).foregroundColor(.green)
                        
                        Text("\(self.count)")
                        
                        Button(action: {
                            if self.count != 0 {
                                self.count -= 1
                            }
                        }, label: {
                            Image(systemName: "minus.circle").font(.largeTitle)
                        }).foregroundColor(.green)
                        
                        Button(action: {}, label: {
                            Text("Add to Cart").padding()
                        }).foregroundColor(.white)
                        .background(Color("Color"))
                        .cornerRadius(12)
                        
                        Spacer(minLength: 12)
                    }
                    
                    
                })
            }).padding()
            .overlay(
                VStack{
                    HStack{
                        Spacer()
                        HStack{
                            Text("4").foregroundColor(.white)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        }.padding()
                        .background(Color.green)
                        .cornerRadius(12)
                        
                    }.padding(.top, -20)
                    .padding(.trailing)
                    
                    Spacer()
                }
            ).background(RoundedCorner().fill(Color.white))
            .padding(.top, -top! - 25)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(show: .constant(false))
    }
}
