//
//  HomeBottomView.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct HomeBottomView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Fresh New Item").font(.title)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("More")
                }).foregroundColor(Color("Color"))
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 15) {
                    ForEach(freshitems){ i in
                        FreshCellView(data: i)
                    }
                }
            })
            
            HStack {
                Text("Recipe").font(.title)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("More")
                }).foregroundColor(Color("Color"))
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 15) {
                    ForEach(recipeitems){ i in
                        RecipeCellView(data: i)
                    }
                }
            })
            
        }
    }
}

