//
//  ContentView.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = "Home"
    
    var body: some View {
        NavigationView{
            VStack{
                if self.selected == "Home" {
                    Home()
                } else if self.selected == "Wishlist" {
                    GeometryReader{_ in
                        Text("Wishlist")
                    }
                } else {
                    GeometryReader{_ in
                        Text("Cart")
                    }
                }
                
                CustomeTabView(selected: $selected)
            }.navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
