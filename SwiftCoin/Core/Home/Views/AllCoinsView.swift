//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Andre Bauer on 2022/11/08.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
            
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(0 ..< 50, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
