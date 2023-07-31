//
//  AlertableViewController.swift
//  Sample
//
//  Created by Galit RONEN on 7/31/23.
//

import UIKit

class AlertableViewController: UIViewController {
    let skipAlert = false
    
    required init?(coder: NSCoder) {
        NotificationCenter.default.addObserver(self, selector: #selector(enteredForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
        super.init(coder: coder)
    }
    
    @objc private func enteredForeground() {
        if skipAlert {
            return
        }
        DispatchQueue.global(qos: .background).async {
            let alert = UIAlertController(title: "Welcome to the app", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continue", style: .destructive, handler: { _ in
                alert.dismiss(animated: true)
            }))
            self.present(alert, animated: true)
            self.enteredForeground()
        }
    }
}
