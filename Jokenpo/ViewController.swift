//
//  ViewController.swift
//  Jokenpo
//
//  Created by user212279 on 09/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var labelResultado: UILabel!
    @IBOutlet weak var labelPlacarJogador: UILabel!
    @IBOutlet weak var labelPlacarIA: UILabel!
    @IBOutlet weak var labelResultadoIA: UILabel!
    @IBOutlet weak var labelResultadoJogador: UILabel!
    
    @IBOutlet weak var viewResultadoJogo: UIView!
    
    var placarrJogador = 0, placarIA = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        placarrJogador = 0
        placarIA = 0
        labelPlacarIA.text = String(placarIA)
        labelPlacarJogador.text = String(placarrJogador)
        viewResultadoJogo.isHidden = true


    }
    

    @IBAction func buttonPedra(_ sender: Any) {
        labelResultadoJogador.text = "Pedra"
        
        var random: Int
        random = Int.random(in: 1...3)
        if random==1 {
            labelResultado.text = "EMPATE"
            labelResultadoIA.text = "Pedra"
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else if random==2 {
            labelResultado.text = "DERROTA"
            labelResultadoIA.text = "Papel"
            placarIA+=1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else {
            labelResultado.text = "VITÓRIA"
            labelResultadoIA.text = "Tesoura"
            placarrJogador += 1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        
        viewResultadoJogo.isHidden = false

    }
    
    @IBAction func buttonPapel(_ sender: Any) {
        labelResultadoJogador.text = " Papel"
        
        var random: Int
        random = Int.random(in: 1...3)
        if random==2 {
            labelResultado.text = "EMPATE"
            labelResultadoIA.text = "Papel"
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else if random==3 {
            labelResultado.text = "DERROTA"
            labelResultadoIA.text = "Tesoura"
            placarIA+=1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else {
            labelResultado.text = "VITÓRIA"
            labelResultadoIA.text = "Pedra"
            placarrJogador += 1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        
        viewResultadoJogo.isHidden = false


    }
    
    
    @IBAction func buttonTesoura(_ sender: Any) {
        labelResultadoJogador.text = "Tesoura"
        
        var random: Int
        random = Int.random(in: 1...3)
        if random==3 {
            labelResultado.text = "EMPATE"
            labelResultadoIA.text = "Tesoura"
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else if random==1 {
            labelResultado.text = "DERROTA"
            labelResultadoIA.text = "Pedra"
            placarIA+=1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        else {
            labelResultado.text = "VITÓRIA"
            labelResultadoIA.text = "Papel"
            placarrJogador += 1
            labelPlacarIA.text = String(placarIA)
            labelPlacarJogador.text = String(placarrJogador)
        }
        viewResultadoJogo.isHidden = false


    }
    

    
}

