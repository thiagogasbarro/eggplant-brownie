//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Thiago Gasbarro Jesus on 16/12/20.
//  Copyright © 2020 Thiago Gasbarro Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet weak var felicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        
        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
            
            let nome = nomeDaRefeicao
            if let felicidade = Int(felicidadeDaRefeicao) {
                
                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
            } else {
                print("erro ao tentar criar a refeição")
            }
        }
    }
}


