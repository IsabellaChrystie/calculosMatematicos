//
//  fibonacci.swift
//  fatorialFibonacci
//
//  Created by ICMMAC10-78E2 on 04/10/22.
//

import UIKit

class fibonacci: UIViewController {
    
    @IBOutlet weak var labResultado: UILabel!
    @IBOutlet weak var numero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btCalcular(_ sender: Any) {
        if let termo = Int(numero.text!){
            var ultimoTermo = 1
            var penultimoTermo = 0
            var resultado = 1
            if termo > 1{
                for i in 1...(termo) {
                    resultado = ultimoTermo + penultimoTermo
                    penultimoTermo = ultimoTermo
                    ultimoTermo = resultado
                    print(i)
                }
            }
           
            labResultado.text = "\(resultado)"
            view.endEditing(true)
        }else {
            labResultado.text = "Entrada não  válida!"
        }
        numero.text = ""
    }
    
    

}
