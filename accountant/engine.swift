//
//  1-2.swift
//  accountant
//
//  Created by Andrei Giangu on 03.04.2021.
//

import Foundation
import SwiftUI


func sum (pays: inout [Double], debtors: Int, missed: Int ) -> Double
{ var total : Double = 0
    let count = 0...debtors+1
    for n in count
    {total += pays[n]}
    
    return total
}


func computePayment(date: inout [[Double]], persCount: Int)
{
    let size = 0...persCount + 1
    var currMean: Double
    for i in size {
        currMean = date[size-1][i] / Double(persCount)
        for k in size{
                
                    if i != k
                    {
                        date[k][i] = currMean
                    }
                
            
        }
    }
    
    
    
    
}

