//
//  ViewController.swift
//  CharLimitApp
//
//  Created by Mac on 14.05.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textCount = textField.text?.count else { return true }
        
        if range.location > textCount { return false }
        
        let newLimit = textCount + string.count
        return newLimit <= 10
    }

    @IBAction func clearButtonTapped() {
        textField.text = ""
    }
    
}

