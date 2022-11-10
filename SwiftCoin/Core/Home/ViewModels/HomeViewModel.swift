//
//  HomeViewModel.swift
//  SwiftCoin
//
//  Created by Andre Bauer on 2022/11/10.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(resposponse.statusCode)")
            }
            
            guard let data = data else { return }
            print("DEBUG: Data \(data)")
        }
    }
}
