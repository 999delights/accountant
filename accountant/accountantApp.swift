//
//  accountantApp.swift
//  accountant
//
//  Created by Andrei Giangu on 02.04.2021.
//

import SwiftUI

@main
struct accountantApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(ViewRouter())
        }
    }
}
