//
//  ShakeGestureManager.swift
//  ShakeUI
//
//  Created by nicola on 24/12/20.
//

import Foundation
import SwiftUI
import Combine

let messagePublisher = PassthroughSubject<Void, Never>()


class ShakeViewController: UIViewController {

    override func motionBegan(_ motion: UIEvent.EventSubtype,
                              with event: UIEvent?) {
        guard motion == .motionShake else { return }
        messagePublisher.send()
    }
}


struct ShakeViewRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) ->
    ShakeViewController {
        ShakeViewController()
    }
    func updateUIViewController(_ uiViewController: ShakeViewController,
                                context: Context) {
        
    }
}
