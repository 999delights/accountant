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
    @Published var persons = [Person]()


}


struct Person
{
     var id: Int
    var nume: String
  
}


