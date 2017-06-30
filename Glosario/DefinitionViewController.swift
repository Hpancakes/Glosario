//
//  DefinitionViewController.swift
//  Glosario
//
//  Created by JoseLuis Lara VIllanueva on 6/30/17.
//  Copyright © 2017 Pachuca Inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var defPND = DefinitionsPND()
    
    @IBOutlet weak var palabraLabel: UILabel!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        palabraLabel.text = defPND.word
        categoriaLabel.text = defPND.category
        definitionLabel.text = defPND.definition
        
        definitionLabel.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func layoutSubviews() {
        super.layoutSubviews()
        definitionLabel.sizeToFit()
    }
    */

}
