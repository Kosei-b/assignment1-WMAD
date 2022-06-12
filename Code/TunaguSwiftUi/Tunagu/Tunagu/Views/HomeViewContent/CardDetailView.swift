//
//  CardDetailView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-02-09.
//

import SwiftUI

struct CardDetailView: View {

    private var numberOfImages = 5
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ScrollView{
            
            VStack{
                
                TabView{
                    ForEach(sampleWorkPlace) { workPlace in
                        
                        Image(workPlace.image)
                            .resizable()
                            .scaledToFit()
                    }
                    
                }.tabViewStyle(PageTabViewStyle())
                    .frame(width: geometry.size.width, height: geometry.size.height / 3)
        
                
              
                VStack(alignment: .center){
                    
                    Text("iOS Developper")
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        
                    
                    Text("AppDEV.Co")
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                        
                        
                    
                    Text("Vancouver,BC")
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                       
                    
                    Text("Listed on 12 hors ago")
                        .font(.system(size: 20, weight: .light, design: .rounded))
                      
                    
                }
                
                Divider()
                
                Text("APPLICATION DEVELOPERRoles & Responsibilities:\n)Analyze information and evaluate results to choose the best solution to effectively solve problems.Apply knowledge gained in computer science courses to real world problems.Develop applications in Java.Understand the requirement and design test cases with test coverage.Build proficiency with test engineering tools.Perform test design, construct test scenarios.Participate in project meetings when required.Record, report, and track defects to accurately depict the status of the system.Complete all test documentation.Apply principles and techniques to evaluate systems during the development lifecycle.Apply strategies and approaches to identify risks with implementation, assess their likelihood, and initiate strategies to test for those risks.Test all code developed as per the defined quality process standards.Work closely with experienced developers, UX designers, and business and systems analysts as part of a larger development team.Ensure developed code is in accordance with time, quality and cost standards.Provide support in specialized technology areas such as requirements/specifications definition, analysis, assessment, planning, design, development, integration, testing, installation, performance tuning, deployment and/or maintenance.Design, develop, test, deploy, maintain and improve software.Technologies: Java OR Javascript OR, Python OR, .Net").padding()
               
                
                
                }
                
            }
            
        }
            
        }
        
        
    }



struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
