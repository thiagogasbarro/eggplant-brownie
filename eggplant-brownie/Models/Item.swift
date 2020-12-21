//
//  Item.swift
//  eggplant-brownie
//
//  Created by Thiago Gasbarro Jesus on 20/12/20.
//  Copyright © 2020 Thiago Gasbarro Jesus. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }

}
