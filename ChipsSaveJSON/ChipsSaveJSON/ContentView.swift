//
//  ContentView.swift
//  Created by jht2 on 1/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var document: Document
    
    var body: some View {
        GeometryReader { geometry in
            let rect = geometry.frame(in: .local)
            TopCanvasView()
            ButtonRow1(rect: rect)
            ButtonRow2(rect: rect)
                .padding(20)
                .onAppear() {
                    // document.addInitalItem(rect: rect)
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let document = Document()
        ContentView()
            .environmentObject(document)
    }
}

//PlaygroundPage.current.setLiveView(ExampleView())

