//
//  ContentView.swift
//  accountant
//
//  Created by Andrei Giangu on 02.04.2021.
//
 
import SwiftUI
import Combine

struct MainView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var date: DateIntrare
    
   
    @State private var numberError1 = false
    @State private var numberError2 = false
    @State private var eventError = false
    
       
    var body: some View {
        
        ZStack (alignment: .top){
            
            HStack{
                
                Text(" Accountant" )
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(.trailing, 170.0)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .foregroundColor(Color.gray)
                    .padding(.top, 20)
                
                
                
                    
                
            }.frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
            VStack(spacing: 0){
                
               
                Spacer()
                
                
                TextField(
                    "Event name ",
                    text: $date.eventname)
                    .padding()
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .foregroundColor(.blue)
                HStack{
                    TextField(
                        "Number of persons",
                        text: $date.nrpers)
                        
                        .padding()
                        .keyboardType(.numberPad)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .border(Color(UIColor.separator))
                        .foregroundColor(.blue)
                        
                    
                    
                    
                    Button("ADD", action:{
                        
                        if date.eventname.isEmpty && (Int(date.nrpers) ?? 0 < 3)
                        {   self.eventError = true
                            self.numberError1 = true }
                        
                        else if date.eventname.isEmpty && (Int(date.nrpers) ?? 0 > 30)
                        {   self.eventError = true
                            self.numberError2 = true }
                        
                        
                       else if (Int(date.nrpers) ?? 0 < 3 )
                                      
                              {self.numberError1 = true
                            self.eventError = false
                                                    
                              }
                        else if date.eventname.isEmpty
                        { self.eventError = true
                            self.numberError1 = false
                        }
                        
                        else if (Int(date.nrpers) ?? 0 > 30)
                        
                        {self.numberError2 = true
                      self.eventError = false
                                              
                        }
        
                              else {
                                viewRouter.currentPage = .page2
                                self.eventError = false
                                self.numberError1 = false
                                             }
                    }
                      
                      
                      )
                      
                    }
                
                
                if eventError {
                                Text("Insert Event name").foregroundColor(Color.red)
                            }
                if numberError2
                {
                    Text("Number of persons must be lower than 30").foregroundColor(Color.red)
                }
                
                
                if numberError1 {
                                Text("Number of persons must be higher than 3").foregroundColor(Color.red)
                            }
                
                Spacer()
                
                
             
                
                
                
                Spacer()
            
            }
                
            
                   
                            }
            .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
           
           .edgesIgnoringSafeArea(.all)
        
        
        }
    }
        
    


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView().environmentObject(ViewRouter())
                      .environmentObject(DateIntrare())
            
        
        }
    }
}
