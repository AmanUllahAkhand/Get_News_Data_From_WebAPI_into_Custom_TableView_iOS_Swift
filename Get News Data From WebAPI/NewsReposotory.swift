//
//  NewsReposotory.swift
//  Get News Data From WebAPI
//
//  Created by USER on 04/09/2022.
//

import UIKit

class NewsRepository: NSObject {
 
    func getNewsRequest(custId: String, completion: @escaping (_ success: NewsModel) -> Void) {
        
        let fullUrl = AllApi.NEWS_REQUEST + "&apiKey=\(custId)"
        
        print(fullUrl)
        var request = URLRequest(url: URL(string: fullUrl)!)
        request.httpMethod = "GET"
        request.timeoutInterval = 120 // 120 sec
        
        request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let myData = data, error == nil else { return }
            do {
                print(myData)
                let responseModel = try JSONDecoder().decode(NewsModel.self, from: myData )
                DispatchQueue.main.async {
                    completion(responseModel)
                }
            } catch let err {
                print(err)
            }
        }.resume()
         
    }
}
