//
//  UIApplication.swift
//  StonksPump
//
//  Created by Alex on 22.08.2021.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEdition() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
