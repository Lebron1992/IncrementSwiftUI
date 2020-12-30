//
//  Store.swift
//  IncrementSwiftUI
//
//  Created by Lebron on 2020/12/30.
//

import Foundation

final class Store: ObservableObject {
    @Published private(set) var state: AppState
    
    private let reducer: Reducer<AppState, AppAction>
    
    init(
        initialState: AppState = .init(),
        reducer: @escaping Reducer<AppState, AppAction>
    ) {
        self.state = initialState
        self.reducer = reducer
    }
    
    func dispatch(_ action: AppAction) {
        state = reducer(state, action)
    }
}
