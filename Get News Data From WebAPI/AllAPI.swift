//
//  AllAPI.swift
//  Get News Data From WebAPI
//
//  Created by USER on 04/09/2022.
//

import Foundation

class AllApi {
    
  
//https://newsapi.org/v2/everything?q=tesla&from=2022-08-04&sortBy=publishedAt&apiKey=1c92c0cc3285425fb8ee9c239548f7fc
    
    static let BASE_URL = "https://newsapi.org/"
    
    static let V1 = "v2"
    
    static let NEWS_REQUEST = BASE_URL + V1 + "/everything?q=tesla&from=2022-08-04&sortBy=publishedAt"
    
}
