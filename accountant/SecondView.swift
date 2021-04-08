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
    @State var eroareNume = false
    
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
//dictionar ??
//                ForEach(0..<(Int(date.nrpers) ?? 0)) { index in
//
//                }
//
//
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<(Int(date.nrpers) ?? 0)) { index in
                    TextField("Person Name",
                              text: $date.persons[index+1])
                    .padding()
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .foregroundColor(.gray)
                    
                }
                }.padding(.top, 10)
                
                Spacer()
                
                if eroareNume {
                                Text("Complete all the names").foregroundColor(Color.red)
                            }
                
                HStack{
                    
                    
                    Button("back", action:{
                            viewRouter.currentPage = .page1
                        
                    } )
                    
                    Spacer()
                    Button("DONE", action:{
                        var count: Int = 0
                        for number in 0..<(Int(date.nrpers) ?? 0) {
                            
                            if(date.persons[number+1].isEmpty){
                            
                                count += 1
                                
                            }}
                        if count > 0
                        {self.eroareNume = true}
                      
                        if(count == 0  )
                        {viewRouter.currentPage = .page3
                            
                        }
                        
                        
                    })
                    
               
                    
                }
                
                
                
            Spacer ()
       
                    
                   
        }     }
            .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
           
           .edgesIgnoringSafeArea(.all)
            .modifier(DismissingKeyboard())
        
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
