//
//  pers.swift
//  accountant
//
//  Created by Andrei Giangu on 03.04.2021.
//

import Foundation
import SwiftUI


struct SecondView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var date: DateIntrare
   
    var body: some View {
        
       
        ZStack (alignment: .top){
            VStack{
            HStack{
                
                Text(" Accountant" )
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(.trailing, 170.0)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .foregroundColor(Color.gray)
                    .padding(.top, 20)
                
                
            }
            HStack(){
                
                Text(date.nrpers + " persons")
                    
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                Spacer()
                Text(date.eventname)
                    
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
               
                
                
                
               
            }
                
                
                
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<(Int(date.nrpers) ?? 0)) { index in
                TextField("Person Name", text: .constant(""))
                    .padding()
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .foregroundColor(.gray)
                }
                }.padding(.top, 10)
                
                Spacer()
                HStack{
                    
                    
                    Button("back", action:{
                            viewRouter.currentPage = .page1
                        
                    } )
                    
                    Spacer()
                    Button("DONE", action:{
                        
                            viewRouter.currentPage = .page3
                        
                    } )
                
               
                    
                }
                
                
                
            Spacer ()
       
                    
                   
        }     }
            .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
           
           .edgesIgnoringSafeArea(.all)
        
        
        }
    }
           
        
        
    
        
    




struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          
           
            SecondView().environmentObject(ViewRouter())
                .environmentObject(DateIntrare())
        
        }
    }
}
