//
//  CalendarView.swift
//  App-DiabeticFoot
//
//  Created by Scarlet on 04/11/23.
//

import SwiftUI

struct CalendarView: View {
    @State private var IDKdate = Date()
    
    var body: some View {
        Form{
            DatePicker ("date", selection: $IDKdate)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
