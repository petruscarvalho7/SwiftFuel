//
//  ViewController.swift
//  Combustivel
//
//  Created by Petrus Carvalho on 13/05/16.
//  Copyright © 2016 Petrus Carvalho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alcoolPrice: UITextField!
    @IBOutlet weak var gasPrice: UITextField!
    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func verify(sender: AnyObject) {
        
        self.dismissKeyboard()
        
        if(self.alcoolPrice.text!.isEmpty || self.gasPrice.text!.isEmpty){
            self.result.text = "Digite os valores de Alcool/Gasolina."
            return
        }
        
        let alcool = Double(self.alcoolPrice.text!)
        let gas = Double(self.gasPrice.text!)
        
        let result = alcool! / gas!
        
        if(result >= 0.7){
            self.result.text = "É melhor Gasolina."
        }else{
            self.result.text = "É melhor Álcool."
        }
        
        self.alcoolPrice.text = ""
        self.gasPrice.text = ""
        
    }

}

