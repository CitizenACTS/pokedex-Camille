//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Pierre De Pingon on 02/05/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    @IBOutlet weak var TypeLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var DefenceLbl: UILabel!
    @IBOutlet weak var pokemonIdLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    
    @IBOutlet weak var evolveLbl: UILabel!
    
    @IBOutlet weak var evolve1Lbl: UIImageView!
    @IBOutlet weak var evolve2Lbl: UIImageView!
    
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        evolve1Lbl.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called after download is done
            self.UpdateUI()
        
        }
        // Do any additional setup after loading the view.
    }
    
    func UpdateUI() {
        descriptionLbl.text = pokemon.description
        TypeLbl.text = pokemon.type
        DefenceLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weight.text = pokemon.weight
        pokemonIdLbl.text = "\(pokemon.pokedexId)"
        baseAttackLbl.text = pokemon.attack
        
        if pokemon.nextEvolutionId == "" {
            evolveLbl.text = "no evolution"
            evolve2Lbl.hidden = true
        } else {
        evolve2Lbl.hidden = false
        evolve2Lbl.image = UIImage(named: pokemon.nextEvolutionId)
        var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            if pokemon.nextEvolutionTxt != "" {
                str += "-LVL \(pokemon.nextEvolutionTxt)"
                evolveLbl.text = str
            } else {
                evolveLbl.text = str
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
