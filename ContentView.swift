//
//  ContentView.swift
//  WeSplit
//
//  Created by Aadhya Gupta on 18/10/26.
//


import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocussed: Bool

    
    var totalAmount: Double {
        let tipSelection = Double(tipPercentage) / 100
        let tipValue = checkAmount * tipSelection
        return checkAmount + tipValue
    }


    var totalPerPerson: Double {
        totalAmount / Double(numberOfPeople)
    }


    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField(
                        "Amount",
                        value: $checkAmount,
                        format: .currency(
                            code: Locale.current.currency?.identifier ?? "USD"
                        )
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocussed)

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) { number in
                            Text("\(number) people")
                                .tag(number)
                        }
                    }
                }

                Section("How much do you want to tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) { percentage in
                            Text("\(percentage)%")
                                .tag(percentage)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                
                Section("Total amount") {
                    Text(
                        totalAmount,
                        format: .currency(
                            code: Locale.current.currency?.identifier ?? "USD"
                        )
                    )
                    .font(.title2)
                    .fontWeight(.bold)
                }


                Section("Amount per person ") {
                    Text(
                        totalPerPerson,
                        format: .currency(
                            code: Locale.current.currency?.identifier ?? "USD"
                        )
                    )
                    .font(.title2)
                    .fontWeight(.bold)

                    Text("Amount per person")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocussed {
                    Button("Done") {
                        amountIsFocussed = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

