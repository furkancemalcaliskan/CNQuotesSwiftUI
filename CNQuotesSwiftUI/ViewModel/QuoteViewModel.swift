//
//  QuoteViewModel.swift
//  CNQuotesSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 17.10.2022.
//

import Foundation
import Alamofire

class QuoteViewModel : ObservableObject {
    
    @Published var quoteList = [Value]()
    
    init() {
        
        getQuote()
        
    }
    
    func getQuote(count: Int = 6) {
        
        AF.request("http://api.icndb.com/jokes/random/\(count)", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
                
            case .success(let data):
                let value = data.value
                self.quoteList += value
            case .failure(let error):
                print(error)
                
            }
            
        }
        
    }
    
}
