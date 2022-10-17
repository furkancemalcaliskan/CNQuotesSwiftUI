//
//  ContentView.swift
//  CNQuotesSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 17.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var quoteVM = QuoteViewModel()
    
    var body: some View {
       
        NavigationView {
            
            /*List(quoteVM.quoteList[0]) { element in
                Text(element.quote)*/
            }
            .toolbar {
                Button(action: addQuote) {
                    Text("Get New Quote")
                }
            }
            .navigationTitle("Chuck Norris Quotes")
            
        }
        
    }
    
    func addQuote() {
        //quoteVM.getQuote(count: 1)
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

