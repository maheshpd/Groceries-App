//
//  RecipeCellView.swift
//  Groceries App
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct RecipeCellView: View {
    var data : recipe
    
    var body: some View {
        VStack(spacing: 10) {
            Image(data.image)
            
            HStack(spacing: 10){
                Image(data.authorpic)
                
                VStack(alignment: .leading, spacing: 6, content: {
                    Text(data.name).fontWeight(.semibold)
                    Text(data.author).foregroundColor(.green).fontWeight(.semibold)
                })
            }
        }
    }
}

