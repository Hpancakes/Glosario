//
//  ViewController.swift
//  Glosario
//
//  Created by JoseLuis Lara VIllanueva on 6/30/17.
//  Copyright © 2017 Pachuca Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var wordTableView: UITableView!
    
    var def : [DefinitionsPND] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        wordTableView.dataSource = self
        wordTableView.delegate = self
        def = makeDefinition()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return def.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let shorDef = def[indexPath.row]
        cell.textLabel?.text = shorDef.word
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let shorDef = def[indexPath.row]
        performSegue(withIdentifier: "Segue", sender: shorDef)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.defPND = sender as! DefinitionsPND
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeDefinition() -> [DefinitionsPND] {
        let word1 = DefinitionsPND()
        word1.word = "A-scan display"
        word1.category = "UT"
        word1.definition = "A display in which the received signal amplitude is shown as a vertical excursion from the horizontal sweep time  trace. The horizontal distance between any two signals represents the material distance between the two conditions causing the signals. 10 In a linear system, the vertical excursion is proportional to the amplitude of the signal."
        
        let word2 = DefinitionsPND()
        word2.word = "absolute coil"
        word2.category = "EC"
        word2.definition = "A coil of electrically conductive wire that responds to the electromagnetic properties of that region of the test object that is within the magnetic field of the coil, without comparison to the response of a second coil at a different location on the same or similar material."
        
        let word3 = DefinitionsPND()
        word3.word = "absolute measurement"
        word3.category = "EC"
        word3.definition = "Measurement made with an absolute coil"
        
        let word4 = DefinitionsPND()
        word4.word = "absolute pressure"
        word4.category = "General"
        word4.definition = "Pressure above absolute zero value, or pressure above that of empty space. Equal to sum of local atmospheric pressure and gage atmosphere."
        
        let word5 = DefinitionsPND()
        word5.word = "absolute temperature"
        word5.category = "General"
        word5.definition = "Temperature measured from absolute zero temperature, expressed in Kelvin (K) in SI."
        
        let word6 = DefinitionsPND()
        word6.word = "absorbed dose"
        word6.category = "RT"
        word6.definition = "The amount of energy imparted to matter by an ionizing particle per unit mass of irradiated material at the place of interest. Absorbed dose is expressed in Gray (Gy) or rads."
        
        return [word1, word2, word3, word4, word5, word6]
    }


}

