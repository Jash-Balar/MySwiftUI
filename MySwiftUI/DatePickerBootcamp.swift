//
//  DatePickerBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 25/04/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State private var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(0.4)
            VStack {
                Text("Selected date:")
                
                Text(dateFormatter.string(from: selectedDate))
                    .font(.headline)
                
                DatePicker("Select a date", selection: $selectedDate)
                
                DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date])
                
                DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate)
                    .foregroundStyle(Color.custom)
                    .padding(.horizontal, 30)
                    .font(.headline)
                    .tint(Color.red)
                    .frame(width: .infinity, height: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green.gradient.opacity(0.75))
                            .padding(10)
                    )
                    .datePickerStyle(.compact)
            }
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
