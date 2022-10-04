//
//  fatorial.swift
//  fatorialFibonacci
//
//  Created by ICMMAC10-78E2 on 04/10/22.
//

import UIKit

class fatorial: UIViewController {

    @IBOutlet weak var textNum: UITextField!
    @IBOutlet weak var labResultado: UILabel!
    
    //var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btCalcular(_ sender: Any) {
        //number = Int(textNum.text!) ?? 0
        var resultado = 1
        if let number = Int(textNum.text!){
            for i in 1...number{
                resultado = resultado * i
            }
            labResultado.text = "\(resultado)"
        }
    }
    

}
