//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Roland Labana on 12/4/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]


    @State private var selected = "Baseball"
    
    var body: some View {
        
        VStack {
            Text("Why not try…")
                .font(.largeTitle.bold())
            
            VStack {
                
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay (Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            Spacer()
            
            Button("Try again") {
                selected = activities.randomElement()  ?? "Archery"          }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
