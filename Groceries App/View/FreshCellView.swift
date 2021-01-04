//
//  FreshCellView.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct FreshCellView: View {
    
    var data : fresh
    @State var show = false
    
    var body: some View {
        ZStack{
            NavigationLink(
              destination: Detail(show: self.$show),
                isActive: self.$show,
                label: {
                    Text("")
                })
            
            VStack(spacing: 10){
                Image(data.image)
                Text(data.name).fontWeight(.semibold)
                Text(data.price).foregroundColor(.green).fontWeight(.semibold)
            }.onTapGesture {
                self.show.toggle()
            }
            
            
        }
    }
}

