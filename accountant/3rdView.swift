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

    let formatter: NumberFormatter = {
           let formatter = NumberFormatter()
           formatter.numberStyle = .decimal
           return formatter
       }()
    var body: some View {
        ZStack(alignment: .top){
            VStack(alignment: .center){
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
                
                ScrollView{
                    Spacer()
                    
                ForEach(0..<(Int(date.nrpers) ?? 0)) { index in
                    Group {
                    ZStack{
                        HStack{
                            
                    Text(date.persons[index+1])
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .autocapitalization(.allCharacters)
                        .foregroundColor(Color.black)
                        .frame(width: 260.0, height: 150.0)
                        .padding(5)
                        .background(RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 550.0, height: 150.0)
                                        .foregroundColor(.blue)
                                        .opacity(0.2))
                        .hoverEffect()
                            
                            VStack{
                        TextField("$", value: $date.plata[index], formatter: formatter)
                            .padding()
                            .frame(width: 70.0, height: 60.0)
                            .keyboardType(.numberPad)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .border(Color(UIColor.separator))
                        .foregroundColor(.gray)
                                
                                Button("ADD",action:{
                                    
                                
                                    
                                }).foregroundColor(.red)
                        }
                            
                        }
                        
                            
                        }
                    
                    
                    }
                }
                
                    
                    Spacer()
                    Button("back", action:{
                        viewRouter.currentPage = .page2
                    } ).padding(.top, 30)
                
                }
                .padding(.top, 10.0)
                .frame(width: 300.0, height: 650.0)
              
                
                
            
            }}
        
        .padding()
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
       
       .edgesIgnoringSafeArea(.all)
        .modifier(DismissingKeyboard())
    
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
