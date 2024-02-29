//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
             fatalError("Can't locate file \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else
        { fatalError("Can't load file data from \(file)") }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else
        { fatalError("Can't decode data from file \(file)") }
        
        return decodedData
    }
}
