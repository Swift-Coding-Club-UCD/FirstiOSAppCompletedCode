//
//  TabBarView.swift
//  AggieEats
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
