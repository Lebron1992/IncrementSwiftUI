//
//  ContentView.swift
//  IncrementSwiftUI
//
//  Created by Lebron on 2020/12/30.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            Text("\(store.state.count)")
            Button("Add") {
                store.dispatch(.increment)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
