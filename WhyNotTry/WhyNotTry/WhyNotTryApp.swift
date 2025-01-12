//
//  WhyNotTryApp.swift
//  WhyNotTry
//
//  Created by Aishwarya M on 07/01/25.
//

import SwiftUI

@main
struct WhyNotTryApp: App {
   
    var body: some Scene {
        WindowGroup {
            ContentView(movie: movies.randomElement() ?? getDefaultMovie())
        }
    }
}
