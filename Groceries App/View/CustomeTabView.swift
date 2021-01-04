//
//  CustomeTabView.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct CustomeTabView: View {
    @Binding var selected: String
    var body: some View {
        HStack{
            ForEach(tabs, id:\.self) { i in
                VStack(spacing: 10){
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 5)
                        .overlay(
                            Capsule().fill(self.selected == i ? Color("Color") : Color.clear).frame(width: 55, height: 5)
                        )
                    
                    Button(action: {
                        self.selected = i
                    }, label: {
                        VStack {
                            Image(i).renderingMode(.original)
                            Text(i).foregroundColor(.black)
                        }
                    })
                    
                }
            }
        }.padding(.horizontal)
    }
}
