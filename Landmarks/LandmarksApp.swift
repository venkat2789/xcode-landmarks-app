//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Venkatachalapathy Sivaprakasam on 5/15/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
