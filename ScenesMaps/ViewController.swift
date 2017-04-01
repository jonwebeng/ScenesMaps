//
//  ViewController.swift
//  ScenesMaps
//
//  Created by JON SKYNET on 20/03/17.
//  Copyright © 2017 JON SKYNET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lat = 0.0;
    var long = 0.0;

    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
   
    @IBAction func sendthis(_ sender: Any) {
        self.lat = 41.606487
        self.long = 2.613965
        
        self.performSegue(withIdentifier: "goback", sender: self)
    }
    @IBAction func sendthis2(_ sender: Any) {
        self.lat = 40.730610
        self.long = -73.935242
        self.performSegue(withIdentifier: "goback", sender: self)
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MapViewController {
            destination.santPol.lat = self.lat;
            destination.santPol.long = self.long;
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

