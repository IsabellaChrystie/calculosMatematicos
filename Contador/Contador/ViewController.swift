//
//  ViewController.swift
//  Contador
//
//  Created by ICMMAC10-78E2 on 24/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.isHidden = true
    }

    @IBAction func check(_ sender: Any) {
        count = Int(input.text!) ?? 0
        multiplo10()
        view.endEditing(true)
        resultado.isHidden = false
    }
    
    func multiplo10(){
        if count%10 == 0 {
            resultado.text = "multiplo de 10"
            
        } else {
            
            resultado.text = "Não é multiplo de 10"
        }
            
     }
}

