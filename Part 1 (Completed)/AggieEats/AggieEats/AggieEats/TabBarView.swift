//
//  TabBarView.swift
//  AggieEats
//
//  Created by Ashley Valdez on 1/2/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Today", systemImage: "star.fill") {
                HomePage()
            }
            Tab("Weekly Menu", systemImage: "menucard") {
                WeeklyMenuView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
