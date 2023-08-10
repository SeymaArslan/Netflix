//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Seyma on 10.08.2023.
//

import Foundation

extension String {
    func capitalizationFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
