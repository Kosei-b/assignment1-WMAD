//
//  FavoriteListView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-26.
//

import SwiftUI

struct FavoriteListView: View {
    
    private var todoItems = [ ToDoItem(name: "IOS Developper"),
                              ToDoItem(name: "Web designer"),
                              ToDoItem(name: "Appllication Developper"),
                              ToDoItem(name: "Android Developper"),
                              ToDoItem(name: "IOS Developper"),
                              ToDoItem(name: "Web designer"),
                              ToDoItem(name: "Appllication Developper"),
                              ToDoItem(name: "Android Developper"),
                              ToDoItem(name: "IOS Developper"),
                              ToDoItem(name: "Web designer"),
                              ToDoItem(name: "Appllication Developper"),
                              ToDoItem(name: "Android Developper"),
                              ToDoItem(name: "IOS Developper"),
                              ToDoItem(name: "Web designer"),
                              ToDoItem(name: "Appllication Developper"),
                              ToDoItem(name: "Android Developper"),
                              
                                ]
    
    @State private var searchText = ""
    

    var body: some View {
        
        
        ZStack {
            
            VStack {
                
                HStack {
                    Text("Favorite List")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    
                    Spacer()
                    
                    
                }
                .padding()
                
                SearchBarView(text: $searchText)
                    .padding(.top, 10)
                
                
                List(todoItems.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
                    Text(item.name)
                }
                
            }
            
        }
    }
}

struct FavoriteListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteListView()
    }
}
