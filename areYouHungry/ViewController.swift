//
//  ViewController.swift
//  areYouHungry
//
//  Created by Ricardo on 24/02/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var burgerImage: UIImageView!
    
    @IBOutlet weak var callLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    let callText : String = "Eat this Burger in ..."
    
    let coleccionDePaises = ColeccionDePaises()
    let coleccionDeHamburguesas = ColeccionDeHamburguesa()
    let precio = Precio()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func giveMeBurgerButton() {
        
        // Set Label Text
        callLabel.text = callText
        
        // Set Random Country/Region
        let paisAleatorio = coleccionDePaises.obtenPais()
        countryLabel.text = paisAleatorio
        
        // Set Random Burge Photo
        let hamburguesaAleatoria = coleccionDeHamburguesas.obtenHamburguesa()
        
        // Set Ranfom Price
        let priceAleatorio : Double = precio.getPrecioAleatorio()
        
        // Process Book Cover
        let imageUrls = "\(hamburguesaAleatoria).jpg"
        burgerImage.image = UIImage(named: imageUrls)
        priceLabel.layer.masksToBounds = true
        priceLabel.layer.cornerRadius = 40
        priceLabel.layer.transform = CATransform3DMakeRotation(-0.35, 0, 0, 1)
        priceLabel.text = "€ \(priceAleatorio)"
        
        // Show Labels
        for label in [callLabel,countryLabel,priceLabel]{
            label.hidden = false
        }
    }

}

