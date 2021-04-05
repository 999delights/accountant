//
//  3rdView.swift
//  accountant
//
//  Created by Andrei Giangu on 03.04.2021.
//

import Foundation
import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var date: DateIntrare

    
    var body: some View {
        ZStack{
            
            VStack{
                Text("salut")
                Spacer()
                Button("back", action:{
                    viewRouter.currentPage = .page2
                } ).padding(.top, 100.0)
                
            
            }
            
            
            }
        }
        
        
        
        
    }
    
    


    




struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          
           
            ThirdView().environmentObject(ViewRouter())
                    .environmentObject(DateIntrare())
                
        }
    }
}
