//
//  Extensions.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
