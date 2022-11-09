//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Andre Bauer on 2022/11/07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView()
                Divider()
                //all coins view
                AllCoinsView()
            }
            .navigationTitle("Live prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
