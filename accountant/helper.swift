//
//  helper.swift
//  accountant
//
//  Created by Andrei Giangu on 04.04.2021.
//

import Foundation
import SwiftUI

enum Page{
case page1
case page2
case page3
}



class DateIntrare: ObservableObject {
    @Published var nrpers = "3"
    @Published var eventname = "munte2022"
    @Published var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: 34), count: 34)
    @Published var plata: [Double] = Array(repeating: 0.00, count: 31)
    @Published var persons: [String] = Array(repeating: "", count: 31)

}







struct Persons
{
     var id: UUID
    var nume: String
  
}


struct DismissingKeyboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                let keyWindow = UIApplication.shared.connectedScenes
                        .filter({$0.activationState == .foregroundActive})
                        .map({$0 as? UIWindowScene})
                        .compactMap({$0})
                        .first?.windows
                        .filter({$0.isKeyWindow}).first
                keyWindow?.endEditing(true)
        }
    }
}



