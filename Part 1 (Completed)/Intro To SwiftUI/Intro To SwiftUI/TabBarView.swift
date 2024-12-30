//
//  TabBarView.swift
//  Intro To SwiftUI
//
//  Created by Ashley Valdez on 12/30/24.
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
