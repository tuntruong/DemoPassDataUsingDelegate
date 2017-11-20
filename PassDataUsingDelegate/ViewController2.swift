//
//  ViewController2.swift
//  PassDataUsingDelegate
//
//  Created by Cuong15tr on 11/15/17.
//  Copyright © 2017 Cuong15tr. All rights reserved.
//

import UIKit
protocol PassDataBackDelegate : class {
    func finishPassing (data : String)
}
class ViewController2 : UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: PassDataBackDelegate?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func passDataBack(_ sender: Any) {
        delegate?.finishPassing(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
