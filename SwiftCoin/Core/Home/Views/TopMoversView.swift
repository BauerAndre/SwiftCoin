//
//  TopMoversView.swift
//  SwiftCoin
//
//  Created by Andre Bauer on 2022/11/07.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack{
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(0 ..< 5, id: \.self) { _ in
                    TopMoversItemView()                    }
                }
            }
        }
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
