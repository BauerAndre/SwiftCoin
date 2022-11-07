//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by Andre Bauer on 2022/11/07.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack{
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            //coinInfo
            HStack {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20.330,00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percent change
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
            
        
        }
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
