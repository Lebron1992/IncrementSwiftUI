//
//  IncrementSwiftUIApp.swift
//  IncrementSwiftUI
//
//  Created by Lebron on 2020/12/30.
//

import SwiftUI

private let store = Store(reducer: appReducer(state:action:))

@main
struct IncrementSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
