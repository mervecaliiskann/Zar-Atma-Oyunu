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
       
        //        Arka plana görüntü aktarmak için;
        if let arkapkan = UIColor(named: "arkaPlan") {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "arkaPlan")!)
            
        }
    }

//    Telefonu sallamak için yazılan method;
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("Telefon sallandı.")
        zarDegerleriniUret()
    func setSonucu(zar1: Int, zar2: Int) {
        
        if oyuncuSira == 1 { //Yeni set başladıgından 1 ile devam ediyor.
            oyuncuPuanlari.birinciOyuncuPuani = zar1+zar2
            lblOyuncu1Puan.text = String(oyuncuPuanlari.birinciOyuncuPuani)
            imgOyuncu1Durum.image = UIImage(named: "bekle")
            imgOyuncu2Durum.image = UIImage(named: "onay")
            lblSetSonucu.text = "Sıra 2. Oyuncuda"
            oyuncuSira = 2
            lblOyuncu2Puan.text = "0" // başa dönüyoruz.
        } else {
            oyuncuPuanlari.ikinciOyuncuPuani = zar1 + zar2
            lblOyuncu2Puan.text = String(oyuncuPuanlari.ikinciOyuncuPuani)
            imgOyuncu1Durum.image = UIImage(named: "onay")
            imgOyuncu2Durum.image = UIImage(named: "bekle")
            oyuncuSira = 1
            // Seti bitirme işlemleri
            
            if oyuncuPuanlari.birinciOyuncuPuani > oyuncuPuanlari.ikinciOyuncuPuani {
                // 1. oyuncu oyunu kazandı.
                oyuncuSkoru.birinciOyuncuSkoru += 1
                lblSetSonucu.text = "\(suankiSet). Seti 1. Oyuncu Kazandı."
                
                suankiSet += 1
                
                lblOyuncu1Skor.text = String(oyuncuSkoru.birinciOyuncuSkoru)
            }else  if oyuncuPuanlari.ikinciOyuncuPuani > oyuncuPuanlari.birinciOyuncuPuani {
                oyuncuSkoru.ikinciOyuncuSkoru += 1
                lblSetSonucu.text = "\(suankiSet). Seti 2. Oyuncu Kazandı."
                suankiSet += 1
                lblOyuncu2Skor.text = String(oyuncuSkoru.ikinciOyuncuSkoru)
                
            }else{
                // oyun berabere kaldı. Setsayısını değiştirmeyecegiz.
                lblSetSonucu.text = "\(suankiSet). Set Berabere Sona Erdi."
            }
    }
    func zarDegerleriniUret() {
        let zar1 = arc4random_uniform(6)+1 // rastgele sayı üretmesi için yazılan methodtur. 0-5 arasında bir sayı üretir. Fakar 1 eklersek 1 ile 6 arasında bir deger üretir.
        let zar2 = arc4random_uniform(6)+1
        print("Zar1 : \(zar1) - Zar2 : \(zar2)" )
        imgZar1.image = UIImage(named: String(zar1))
        imgZar2.image = UIImage(named: String(zar2))
        setSonucu(zar1: Int(zar1), zar2: Int(zar2))
        if suankiSet > maxSetSayisi {
            if oyuncuSkoru.birinciOyuncuSkoru > oyuncuSkoru.ikinciOyuncuSkoru {
                lblSetSonucu.text = "Oyunun Galibi 1. Oyuncudur. TEBRİKLER!"
            }else {
                lblSetSonucu.text = "Oyunun Galibi 2. Oyuncudur. TEBRİKLER!"
            }
        }
    }

}

