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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
