//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Thiago Gasbarro Jesus on 20/12/20.
//  Copyright © 2020 Thiago Gasbarro Jesus. All rights reserved.
//

import UIKit

class Refeicao: NSObject {

    //MARK: - Atributos
    
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []
    
    //MARK: - Construtor
    
    init(nome: String, felicidade: Int, itens:[Item] = []){
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    //MARK: - Metodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
}

