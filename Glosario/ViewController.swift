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
        word1.category = "Ultrasonido industrial"
        word1.definition = "Visualización en la que la amplitud de la señal recibida se muestra como una excursión vertical a partir de la trayectoria del tiempo de barrido horizontal La distancia horizontal entre dos señales representa la distancia del material entre las dos condiciones que causan las señales 10 En un sistema lineal , La excursión vertical es proporcional a la amplitud de la señal."
        
        let word2 = DefinitionsPND()
        word2.word = "Absolute coil"
        word2.category = "Corrientes Eddy"
        word2.definition = "Una bobina de alambre eléctricamente conductor que responde a las propiedades electromagnéticas de esa región del objeto de prueba que está dentro del campo magnético de la bobina, sin comparación con la respuesta de una segunda bobina en un lugar diferente en el mismo material o material similar."
        
        let word3 = DefinitionsPND()
        word3.word = "Absolute measurement"
        word3.category = "Correintes Eddy"
        word3.definition = "Medida realizada con una bobina absoluta"
        
        let word4 = DefinitionsPND()
        word4.word = "Absolute pressure"
        word4.category = "General"
        word4.definition = "Presión por encima del valor cero absoluto, o presión por encima de la del espacio vacío. Igual a la suma de la presión atmosférica local y la atmósfera de calibración."
        
        let word5 = DefinitionsPND()
        word5.word = "Absolute temperature"
        word5.category = "General"
        word5.definition = "Temperatura medida desde la temperatura cero absoluta, expresada en Kelvin (K) en SI."
        
        let word6 = DefinitionsPND()
        word6.word = "Absorbed dose"
        word6.category = "Radiografia Tradicional"
        word6.definition = "La cantidad de energía impartida a la materia por una partícula ionizante por unidad de masa de material irradiado en el lugar de interés. La dosis absorbida se expresa en Gray (Gy) o rads."
        
        let word7 = DefinitionsPND()
        word7.word = "Absorption coefficient, lineal"
        word7.category = "Ultrasonido industrial"
        word7.definition = "La disminución fraccionada en la intensidad transmitida por unidad de espesor del absorbedor. Por lo general se designa con el símbolo μ y se expresa en unidades de cm -1"
        
        let word8 = DefinitionsPND()
        word8.word = "Acceptable quality level (AQL)"
        word8.category = "General"
        word8.definition = "El porcentaje máximo defectuoso (o el número máximo de unidades con anomalías rechazables por cien unidades) que, a efectos de las pruebas de muestreo, puede considerarse satisfactorio como un promedio de proceso."
        
        let word9 = DefinitionsPND()
        word9.word = "Acceptance criteria"
        word9.category = "General"
        word9.definition = "La norma con la que deben compararse los resultados de las pruebas con el fin de establecer la aceptabilidad funcional de una parte o sistema que se esté examinando."
        
        let word10 = DefinitionsPND()
        word10.word = "Acceptance level"
        word10.category = "General"
        word10.definition = "Un nivel de prueba por encima o por debajo del cual los objetos de prueba son aceptables en contraste con el nivel de rechazo."
        
        let word11 = DefinitionsPND()
        word11.word = "Acceptance standard"
        word11.category = "General"
        word11.definition = "Un espécimen similar al objeto de ensayo que contiene discontinuidades naturales o artificiales que están bien definidas y son similares en tamaño o extensión al máximo aceptable en el producto. Ver norma de referencia y estándar."
        
        let word12 = DefinitionsPND()
        word12.word = "Accommodation:"
        word12.category = "General"
        word12.definition = "Del ojo, ajuste de la potencia de enfoque de la lente cambiando el grosor y la curvatura de la lente por la acción de músculos minúsculos atados a la lente."
        
        let word13 = DefinitionsPND()
        word13.word = "Accumulation test technique"
        word13.category = "General"
        word13.definition = "Detectar la cantidad total de fuga encerrando el componente bajo prueba dentro de una capucha, bolsa, caja, cubierta o contenedor. Para pruebas de presión, cualquier fuga de gas del componente se acumula en el espacio (volumen) entre el componente y el recinto. Para la prueba de vacío, cualquier fuga de gas en el componente se acumula en el detector de fugas muestreando el componente evacuado. La acumulación de gas trazador en un período de tiempo medido proporciona una medida de la tasa de fugas."
        
        let word14 = DefinitionsPND()
        word14.word = "accuracy"
        word14.category = "General"
        word14.definition = "El grado de conformidad de una medida con un valor estándar o verdadero."
        
        let word15 = DefinitionsPND()
        word15.word = "Acoustic emission"
        word15.category = "Emision Acustica"
        word15.definition = "Las ondas elásticas transitorias resultantes de micro desplazamientos internos locales en un material. El término también describe la disciplina técnica y la técnica de medición relacionada con este fenómeno."
        
        let word16 = DefinitionsPND()
        word16.word = "acoustic emission activity"
        word16.category = "Emision Acustica"
        word16.definition = "El número de ráfagas (o eventos, si se cumplen las condiciones apropiadas) detectados durante una prueba de emisión acústica."
        
        
        
        return [word1, word2, word3, word4, word5, word6, word7, word8, word9, word10, word11, word12, word13, word14, word15, word16,  ]
    }


}

