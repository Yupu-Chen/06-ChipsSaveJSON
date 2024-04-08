//
//  ButtonRow1.swift
//  ChipsSaveJSON
//
//  Created by Yupu Chan on 8/4/2024.
//

import SwiftUI

struct ButtonRow1: View {
    @EnvironmentObject var document: Document
    
    var rect: CGRect
    
    var body: some View {
        HStack {
            Button("Add") {
                withAnimation {
                    document.addItem(rect: rect)
                }
            }
            Button("+8") {
                withAnimation {
                    //document.clear();
                    document.addItems(rect: rect, count: 8)
                }
            }
            Button("Clear") {
                withAnimation {
                    document.clear();
                }
            }
            Button("Shake") {
                withAnimation {
                    document.shakeDemo();
                }
            }
            Button("Color") {
                withAnimation {
                    document.colorDemo();
                }
            }
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    ButtonRow1(rect: CGRect(x:0, y:0, width: 100, height: 100))
        .environmentObject(Document())
}
