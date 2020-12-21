//
//  refeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Thiago Gasbarro Jesus on 21/12/20.
//  Copyright © 2020 Thiago Gasbarro Jesus. All rights reserved.
//

import UIKit



class refeicoesTableViewController: UITableViewController, adicionaRefeicaoDelegate {
    
    var refeicoes = [Refeicao(nome: "Macarrão", felicidade: 4, itens:[]),
                     Refeicao(nome: "Pizza", felicidade: 4, itens:[]),
                     Refeicao(nome: "Comida Japonesa", felicidade: 5, itens:[])]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    
    }
    
    func add(_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionarRefeicao" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self
                
            }
        }
    }
}
