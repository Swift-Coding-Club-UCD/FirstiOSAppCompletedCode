//
//  MenuOptionsView.swift
//  AggieEats
//

import SwiftUI

struct MenuOptionsView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("Menu Options Color"))
                .frame(height: 100)
            VStack(alignment: .leading) {
                Text("Chicken Bowl")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Out of Stock")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.red)
                
            }
            .padding()
        }
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("Menu Options Color"))
                .frame(height: 100)
            VStack(alignment: .leading) {
                Text("Hummus & Cucumber Sandwich")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Limited Availability")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.yellow)
                
            }
            .padding()
        }
    }
}

#Preview {
    MenuOptionsView()
}

