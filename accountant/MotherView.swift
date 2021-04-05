//
//  MotherView.swift
//  accountant
//
//  Created by Andrei Giangu on 04.04.2021.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    let date = DateIntrare()
  
    var body: some View {
        switch viewRouter.currentPage{
        
        case .page1:
            MainView().environmentObject(date)
        case .page2:
            SecondView().environmentObject(date)
        case .page3:
            ThirdView().environmentObject(date)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
