//
//  ViewController.swift
//  pickerView
//
//  Created by CH 002 on 01/10/22.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var inputTF: UITextField!
    let pickerView = UIPickerView()
    var array = ["A","B","C","D","E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        inputTF.inputView = pickerView
        
    }

}

extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
         }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        inputTF.text = array[row]
    }
}
