//
//  AggieEatsApp.swift
//  AggieEats
//

import SwiftUI
import Stripe

@main
struct AggieEatsApp: App {
    init() {
        StripeAPI.defaultPublishableKey = "your-pk-test-stripe-publishable-key"
    }
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}
