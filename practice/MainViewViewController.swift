//
//  MainViewViewController.swift
//  practice
//
//  Created by imac-1681 on 2023/7/5.
//

import UIKit

class MainViewViewController: UIViewController {
    @IBOutlet weak var color:UIImageView!
    @IBOutlet weak  var red:UISlider!
    @IBOutlet weak var green:UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var bluevalue: UITextField!
    @IBOutlet weak var greenvalue: UITextField!
    @IBOutlet weak var redvalue: UITextField!
    @IBOutlet weak var redom: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        redom.setTitle("隨機", for: .normal)
    }
    
    @IBAction func text(_ sender: UITextField) {
        switch sender.tag{
        case 0:
        if let RedStringValue = redvalue.text{
            if let RedIntValue = Int(RedStringValue){
                red.setValue(Float(RedIntValue), animated: true)
            }
        }
        case 1:
        if let GreenStringValue = greenvalue.text{
            if let GreenIntValue = Int(GreenStringValue){
                green.setValue(Float(GreenIntValue), animated: true)
            }
        }
        case 2:
        if let BlueStringValue = bluevalue.text{
            if let BlueIntValue = Int(BlueStringValue){
                blue.setValue(Float(BlueIntValue), animated: true)
            }
        }
        default:
            print("")
    }
        color.backgroundColor = UIColor(red: CGFloat((red.value)/255), green: CGFloat((green.value)/255), blue: CGFloat((blue.value)/255), alpha: 1)
               
}
    @IBAction func redom(_ sender: UIButton) {
        
        red.value = Float.random(in: 0...255)
        green.value = Float.random(in: 0...255)
        blue.value = Float.random(in: 0...255)
        redvalue.text = "\(Int(red.value))"
        greenvalue.text = "\(Int(green.value))"
        bluevalue.text = "\(Int(blue.value))"
        color.backgroundColor = UIColor(red: CGFloat((red.value)/255), green: CGFloat((green.value)/255), blue: CGFloat((blue.value)/255), alpha: 1)
               
    }
    @IBAction func SliderSum(_ slider: UISlider){
        switch slider.tag{
        case 0:
//            red.value = Float(CGFloat((slider.value)/255))
            redvalue.text = "\(Int(red.value))"
        case 1:
//            green.value =  Float(CGFloat((slider.value)/255))
            greenvalue.text = "\(Int(green.value))"
        case 2:
//            blue.value = Float(CGFloat((slider.value)/255))
            bluevalue.text = "\(Int(blue.value))"
        default:
               print("")
        }
    color.backgroundColor = UIColor(red: CGFloat((red.value)/255), green: CGFloat((green.value)/255), blue: CGFloat((blue.value)/255), alpha: 1)
           
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

