//
//  ConfirmOrderVIew.swift
//  AggieEats
//
//  Created by Ashley Valdez on 1/2/25.
//

import SwiftUI

struct ConfirmOrderView: View {
    @State var quantity: Int = 0
    @State var quantityStr: String = String()
    @State var amount: Decimal = 0.00
    @FocusState var isAmountFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Order")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            EnterQuantityView(quantity: $quantity, quantityStr: $quantityStr)
            EnterAmountView(amount: $amount, isAmountFocused: $isAmountFocused)
            Divider()
                .frame(height: 3)
                .overlay(.black)
                .padding([.top, .bottom])
            TotalView(total: amount)
            Button {
                // TODO: Add button action.
            } label: {
                Text("Confirm Order")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .controlSize(.large)
            Spacer()

          
        Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarBackButtonHidden()
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            quantityStr = String(quantity)
        }
        .onChange(of: quantity) {
            quantityStr = String(quantity)
        }
        .onTapGesture {
            isAmountFocused = false
            
            
        }
    }
    
}

struct EnterQuantityView: View {
    @Binding var quantity: Int
    @Binding var quantityStr: String
    
    var body: some View {
        HStack {
            Text("Quantity")
                .font(.title2)
                .fontWeight(.bold)
                Spacer()
            Stepper("", value: $quantity, in: 0...3)
            TextField("", text: $quantityStr)
                .disabled(true)
                .multilineTextAlignment(.center)
                .cornerRadius(10)
                .frame(width: 100, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 1)
                )
        }
    }
}

struct EnterAmountView : View {
    @Binding var amount: Decimal
    @FocusState.Binding var isAmountFocused: Bool
    
    var body : some View {
        HStack {
            Text("Pay What You Want")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            TextField("", value: $amount, format: .currency(code: "USD"))
                .focused($isAmountFocused)
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
                .cornerRadius(10)
                .frame(width: 100, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 1)
                )
        }
        .padding(.bottom)
    }
}

struct TotalView: View {
    var total: Decimal
    
    var body: some View {
        HStack {
            Text("Total")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Text(total, format: .currency(code: "USD"))
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    ConfirmOrderView()
}
