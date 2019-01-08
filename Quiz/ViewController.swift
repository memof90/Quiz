//
//  ViewController.swift
//  Quiz
//
//  Created by Memo Figueredo on 1/8/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //conectores outlets
    
    //UIIMAGEVIEW
    @IBOutlet weak var vistaImagen: UIImageView!
    
    //Label
    @IBOutlet weak var respuestaLabel: UILabel!
    
    //arreglo imagenes
    
    let personajesLista = ["albert", "bean", "chavo", "girafales", "kevinHart", "hittler", "smith", "zidane"]
    
    //contador index
    
    var contadorPersonajesIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // funciones
        actualizaPersonaje()
    }
    
    //funcion mostrar personaje
    func actualizaPersonaje(){
        respuestaLabel.text = "?"
        let nombrePersonaje = personajesLista[contadorPersonajesIndex]
        let image = UIImage(named: nombrePersonaje)
        vistaImagen.image = image
    }

    //acciones
    @IBAction func verRespuesta(_ sender: Any) {
        
        respuestaLabel.text = personajesLista[contadorPersonajesIndex]
    }
    
    @IBAction func siguientePersonaje(_ sender: Any) {
        
        contadorPersonajesIndex += 1
        
        if contadorPersonajesIndex >= personajesLista.count {
            
            contadorPersonajesIndex = 0
        }
        actualizaPersonaje()
    }
}

