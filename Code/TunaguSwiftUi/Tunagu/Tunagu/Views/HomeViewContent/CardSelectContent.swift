//
//  CardSelectContent.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-27.
//

import SwiftUI

struct CardSelectContent: View {
    
    @State private var selection = 0
    @State private var items = ["Card" , "Gryid"]
    
    var body: some View {
        
        
        TabView(selection: $selection) {
            ForEach(0..<items.count) { index in
                
                
                Text(items.reversed()[index])
                    .tag(index)
            }
        }
        .background(Color.gray.opacity(0.1))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .onAppear {
            // 初期表示が TOP になるように
            selection = items.count - 1
        }
    }
}

struct CardSelectContent_Previews: PreviewProvider {
    static var previews: some View {
        CardSelectContent()
    }
}
