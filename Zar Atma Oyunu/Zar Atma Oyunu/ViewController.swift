//
//  ViewController.swift
//  Zar Atma Oyunu
//
//  Created by Merve Çalışkan on 4.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblOyuncu1Skor: UILabel!
    @IBOutlet weak var lblOyuncu2Skor: UILabel!
    @IBOutlet weak var lblOyuncu1Puan: UILabel!
    @IBOutlet weak var lblOyuncu2Puan: UILabel!
    @IBOutlet weak var imgOyuncu1Durum: UIImageView!
    @IBOutlet weak var imgOyuncu2Durum: UIImageView!
    @IBOutlet weak var imgZar1: UIImageView!
    @IBOutlet weak var imgZar2: UIImageView!
    @IBOutlet weak var lblSetSonucu: UILabel!
    
    var oyuncuPuanlari = (birinciOyuncuPuani : 0 , ikinciOyuncuPuani : 0)
    var oyuncuSkoru = (birinciOyuncuSkoru : 0, ikinciOyuncuSkoru : 0)
    var oyuncuSira : Int = 1
    var maxSetSayisi : Int = 5
    var suankiSet : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Arka plana görüntü aktarmak için;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "arkaPlan")!)
       
        //        Arka plana görüntü aktarmak için;
        if let arkapkan = UIColor(named: "arkaPlan") {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "arkaPlan")!)
            
        }
    }

//    Telefonu sallamak için yazılan method;
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("Telefon sallandı.")
    }

}

