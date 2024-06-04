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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Arka plana görüntü aktarmak için;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "arkaPlan")!)
       
    }


}

