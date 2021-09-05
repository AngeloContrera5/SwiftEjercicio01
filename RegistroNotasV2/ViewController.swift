//
//  ViewController.swift
//  RegistroNotasV2
//
//  Created by Angelo Contreras on 5/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfNombres: UITextField!
    @IBOutlet weak var tfCurso: UITextField!
    
    @IBOutlet weak var tfNota1: UITextField!
    @IBOutlet weak var tfNota2: UITextField!
    @IBOutlet weak var tfNota3: UITextField!
    @IBOutlet weak var tfNota4: UITextField!
    @IBOutlet weak var tfPromedio: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tfNota1.text = "0.0"
        self.tfNota2.text = "0.0"
        self.tfNota3.text = "0.0"
        self.tfNota4.text = "0.0"
        self.tfPromedio.text = "0.0"
    }
    
    @IBAction func btnCalcular_onClick(_ sender: Any) {
        var Nota1 : Double = 0.0
        var Nota2 : Double = 0.0
        var Nota3 : Double = 0.0
        var Nota4 : Double = 0.0
        var Promedio : Double = 0.0
        var Mensaje : String = "Desaprobado"
        
        
        Nota1 = Double (tfNota1.text ?? "") ?? 0
        Nota2 = Double (tfNota2.text ?? "") ?? 0
        Nota3 = Double (tfNota3.text ?? "") ?? 0
        Nota4 = Double (tfNota4.text ?? "") ?? 0
        
        Promedio = (Nota1 + Nota2 + Nota3 + Nota4) / 4
        
        self.tfPromedio.text = String(Promedio)
        
        if Promedio > 12.9 {
            Mensaje = "Aprobado"
        }
        
        let alert = UIAlertController(title: "Validaciòn de notas", message: "estado: \(Mensaje)", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func btnLimpiar_onClick(_ sender: Any) {
        
        tfNombres.text = ""
        tfCurso.text = ""
        tfNota1.text = ""
        tfNota2.text = ""
        tfNota3.text = ""
        tfNota4.text = ""
        tfPromedio.text = ""
    }
    

}

