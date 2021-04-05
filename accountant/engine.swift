//
//  1-2.swift
//  accountant
//
//  Created by Andrei Giangu on 03.04.2021.
//

import Foundation
import SwiftUI


func sum (pays: [Double], debtors: Int, missed: Int ) -> Double
{ var total : Double = 0
    let count = 0...debtors+1
    for n in count
    {total += pays[n]}
    
    return total
}


/*func computePayment(data: [[Double]], persCount: Int) -> Int
{
    
    
    
}
*/
