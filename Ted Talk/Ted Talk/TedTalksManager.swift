//
//  TedTalksManager.swift
//  TedTalksManager
//
//  Created by Matias Nicolas Morales on 05/08/2022.
//

import Foundation

public class TedTalksManager {
    let fileName = "tedTalks"
    @Published var talks = [TedTalksModel]()
    
    init() {
        fetchTalk()
    }
    func fetchTalk() {
        //DispatchQueue.global(qos: .background).async {
            let url = URL(fileURLWithPath: self.getURL(self.fileName))
//            var talks: [TedTalksModel] = []
    
            
            do {
                let jsonData = try Data(contentsOf: url)
                talks = try JSONDecoder().decode([TedTalksModel].self, from: jsonData)
            } catch {
                debugPrint("Error decoding json: \(error)")
            }
//            completion(talks)
       // }
    }
        func getURL(_ name: String) -> String {
            guard let path = Bundle.main.path(forResource: name, ofType: "json") else{
                debugPrint("Error getting path")
                return ""
            }
            return path
        }
    
    
    
    
    
//        let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
//            if let error = error {
//                print("Error Fetching ted talks: \(error.localizedDescription)")
//            }
//            
//            guard let jsonData = data else { return }
//                  
//            let decoder = JSONDecoder()
//            
//            do {
//                let decodedData = try decoder.decode(TedTalksModel.self, from: jsonData)
//                    completion(decodedData)
//            } catch {
//                    print("Error decoding data.")
//            }
//        }
//        dataTask.resume()
    
    
    
}
 
