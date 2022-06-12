//
//  CardGridView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-26.
//

import SwiftUI

struct CardGridView: View {
    
    @State var gridLayout = [ GridItem() ]
    
    var body: some View {
        
        GeometryReader { geometry in
            
            NavigationView {
                
                ScrollView(showsIndicators: false) {
                    
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        
                        ForEach(sampleWorkPlace) { workPlace in
                            
                            NavigationLink(destination: CardDetailView())
                            {
                            ZStack{
                                
                                ZStack{
                                    
                                    Image(workPlace.image)
                                        .resizable()
                                        .scaledToFill()
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.clear , Color(red: 0, green: 0, blue: 0, opacity: 0.5)]), startPoint: .top, endPoint: .bottom)
                                    
                                }
                                .frame(minWidth: 0, maxWidth: geometry.size.width - 20)
                                .frame(maxHeight: 250)
                                .cornerRadius(30)
                                .shadow(color: Color.primary.opacity(0.5), radius: 1)
                                
                                
                                VStack(alignment: .leading){
                                    
                                   Spacer()
                                    
                                    Text("IOS Developper")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25, weight: .bold, design: .rounded))
                                    
                                    Text("Vancouver")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25, weight: .bold, design: .rounded))
                                    
                                }
                                .frame(width: geometry.size.width - 20,alignment: .leading)
                                .padding(.leading)
                                .padding(.bottom)
                                
                                
                                
                                
                            }
                            }
                            
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))]) {
                                ForEach(workPlace.workPlaceDetailPhotos) { workPlaceDetailPhotos in
                                    Image(workPlaceDetailPhotos.name)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(height: 50)
                                        .cornerRadius(10)
                                }
                            }
                            .frame(minHeight: 0, maxHeight: .infinity, alignment: .top)
                            .animation(.easeIn, value: gridLayout.count)
                            .padding(.bottom,30)
                            
                            
                        }
                        
                    }
                    .padding(.all, 10)
                   
                    .animation(.interactiveSpring(), value: gridLayout.count)
                }
                
                .navigationBarHidden(true)
                .navigationBarTitle(Text(""), displayMode: .inline)
            }
            
        }
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardGridView()
        }
    }
}
