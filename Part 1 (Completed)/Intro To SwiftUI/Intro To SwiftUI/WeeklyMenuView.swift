//
//  WeeklyMenuView.swift
//  Intro To SwiftUI
//
//  Created by Ashley Valdez on 12/30/24.
//

import SwiftUI

struct WeeklyMenuView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Monday")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Tuesday")
                    .padding(.top)
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Wednesday")
                    .padding(.top)
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Thursday")
                    .padding(.top)
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
                Text("Friday")
                    .padding(.top)
                    .font(.title2)
                    .fontWeight(.bold)
                MenuOptionsView()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WeeklyMenuView()
}
