//
//  MenuOptionsView.swift
//  AggieEats
//

import SwiftUI
import OrderedCollections

struct MenuOptionsView: View {
    @State var menuItems: OrderedDictionary<String, [String]>
    
    var body: some View {
        ForEach(menuItems.keys, id: \.self) { key in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Menu Options Color"))
                    .frame(height: 130)
                VStack(alignment: .leading) {
                    Text(key)
                        .font(.title3)
                        .fontWeight(.semibold)
                    if let value = menuItems[key] {
                        if value[0] == "In Stock" {
                            Text(value[0])
                                .fontWeight(.semibold)
                                .foregroundStyle(Color("In Stock Color"))
                        } else if value[0] == "Limited Availability" {
                            Text(value[0])
                                .fontWeight(.semibold)
                                .foregroundStyle(Color("Limited Availability Color"))
                        } else if value[0] == "Out of Stock" {
                            Text(value[0])
                                .fontWeight(.semibold)
                                .foregroundStyle(.red)
                        }
                        VStack(alignment: .leading) {
                            HStack {
                                ForEach(1..<value.count) { index in
                                    HStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("Allergens Background Color"))
                                                .frame(width: 40, height: 40)
                                            Text(value[index])
                                                .fontWeight(.semibold)
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    }
                                }
                        }

                    }
                }
                .padding(.leading)
                    
                }
                
            }
            
    }
}

//#Preview {
//    MenuOptionsView(menuItems: <#OrderedDictionary<String, [String]>#>)
//}

