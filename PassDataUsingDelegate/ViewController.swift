//
//  ViewController.swift
//  PassDataUsingDelegate
//
//  Created by Cuong15tr on 11/15/17.
//  Copyright © 2017 Cuong15tr. All rights reserved.
//

import UIKit



class ViewController: UIViewController{
    
    
    @IBOutlet weak var labelTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showData"{
            if let destination = segue.destination as? ViewController2 {
                destination.delegate = self
            }
        }
    }

    
}
extension ViewController: PassDataBackDelegate {
    func finishPassing(data: String) {
        labelTextField.text = data
    }
}

