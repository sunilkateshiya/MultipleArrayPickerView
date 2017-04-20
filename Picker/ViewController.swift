//
//  ViewController.swift
//  Picker
//
//  Created by iFlame on 4/20/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    
    let arrayOne = ["One", "Two", "Three", "Four", "Five", "Six"]
    let arrayTwo = ["I", "II", "II", "IV", "V", "VI"]
    let arrayThree = [1, 2, 3, 4, 5, 6]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(_: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return arrayOne.count
        case 1:
            return arrayTwo.count
        case 2:
            return arrayThree.count
        default:
            return NSNotFound
        }
    }
    
     func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        var attributedString: NSAttributedString!
        
        switch component {
        case 0:
            attributedString = NSAttributedString(string: arrayOne[row], attributes: [NSForegroundColorAttributeName : UIColor.blue])
        case 1:
            attributedString = NSAttributedString(string: arrayTwo[row], attributes: [NSForegroundColorAttributeName : UIColor.gray])
        case 2:
              attributedString = NSAttributedString(string: String(arrayThree[row]), attributes: [NSForegroundColorAttributeName : UIColor.red])
            
        default:
            attributedString = nil
        }
        
        return attributedString
    }
    
    func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            print(arrayOne[row])
        case 1:
            print(arrayTwo[row])
        case 2:
            print(arrayThree[row])
        default:
            break
        }
    }
    
}
