//
//  AppReducer.swift
//  IncrementSwiftUI
//
//  Created by Lebron on 2020/12/30.
//

import Foundation

typealias Reducer<State, Action> = (State, Action) -> State

func appReducer(state: AppState, action: AppAction) -> AppState {
    var newState = state
    switch action {
    case .increment:
        newState.count += 1
    }
    return newState
}
