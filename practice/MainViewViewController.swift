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
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
        // Do any additional setup after loading the view.
    }
    @objc func closeKeyboard() {
           view.endEditing(true)
       }
    func setupUI(){
        redom.setTitle("隨機", for: .normal)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
     }
    @IBAction func text(_ sender: UITextField) {
        switch sender.tag{
        case 0:
        if let RedStringValue = redvalue.text{
            if let RedIntValue = Int(RedStringValue){
                if RedIntValue > 255{
                    red.setValue(255, animated: true)
                    redvalue.text = "\(Int(255))"
                }else if RedIntValue < 0{
                    red.setValue(0 , animated: true)
                    redvalue.text="\(Int(0))"
                }else{
                red.setValue(Float(RedIntValue), animated: true)
                    redvalue.text = "\(Int(RedIntValue))"
                }
            }
        }
        case 1:
        if let GreenStringValue = greenvalue.text{
            if let GreenIntValue = Int(GreenStringValue){
                if GreenIntValue > 255{
                    green.setValue(Float(GreenIntValue), animated: true)
                    greenvalue.text = "\(Int(255))"
                }else if GreenIntValue < 0{
                    green.setValue(Float(GreenIntValue), animated: true)
                    greenvalue.text = "\(Int(0))"
                }
                else{
                    green.setValue(Float(GreenIntValue), animated: true)
                    greenvalue.text = "\(Int(GreenIntValue))"
                }
                
            }
        }
        case 2:
        if let BlueStringValue = bluevalue.text{
            if let BlueIntValue = Int(BlueStringValue){
                if BlueIntValue > 255{
                    blue.setValue(Float(BlueIntValue), animated: true)
                    bluevalue.text = "\(Int(255))"
                }else if BlueIntValue < 0{
                    blue.setValue(Float(BlueIntValue), animated: true)
                    bluevalue.text = "\(Int(0))"
                }else{
                    blue.setValue(Float(BlueIntValue), animated: true)
                    bluevalue.text = "\(Int(BlueIntValue))"
                }
                
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

