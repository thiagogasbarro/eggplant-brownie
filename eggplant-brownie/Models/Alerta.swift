//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Thiago Gasbarro Jesus on 22/12/20.
//  Copyright © 2020 Thiago Gasbarro Jesus. All rights reserved.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String){
        func exibeAlerta() {
            let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            alerta.addAction(ok)
            
            controller.present(alerta, animated: true, completion: nil)
        }
    }
}
