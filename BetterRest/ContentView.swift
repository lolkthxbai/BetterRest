//
//  ContentView.swift
//  BetterRest
//
//  Created by Junior Garcia on 10/30/26.
//

import SwiftUI

struct ContentView: View {
	@State private var wakeUp = Date.now
	@State private var sleepAmount = 8.0
	
    var body: some View {
		DatePicker("Please enter a time", selection: $wakeUp, in: Date.now...)
		Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
    }
	
	func exampleDate() {
		let tomorrow = Date.now.addingTimeInterval(86400)
		let range = Date.now...tomorrow
	}
}

#Preview {
    ContentView()
}
