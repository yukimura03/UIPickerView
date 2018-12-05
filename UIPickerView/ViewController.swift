//
//  ViewController.swift
//  UIPickerView
//
//  Created by minagi on 2018/12/05.
//  Copyright © 2018 minagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.isHidden = true
        button_cancel.isHidden = true
        button_done.isHidden = true
        
        picker.delegate = self
        picker.dataSource = self
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button_cancel: UIButton!
    @IBOutlet weak var button_done: UIButton!
    
    

    @IBAction func tapLabel(_ sender: Any) {
        picker.isHidden = false
        button_cancel.isHidden = false
        button_done.isHidden = false
    }
    
    let array = ["赤","青","黄","緑"]
    var color = ""
    
    @IBOutlet weak var picker: UIPickerView!
    
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
        color = array[row]
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        picker.isHidden = true
    }
    
    @IBAction func done(_ sender: Any) {
        if color == "赤" {
            view.backgroundColor = UIColor.red
        } else if color == "青" {
            view.backgroundColor = UIColor.blue
        } else if color == "黄" {
            view.backgroundColor = UIColor.yellow
        } else if color == "緑" {
            view.backgroundColor = UIColor.green
        }
        picker.isHidden = true
    }
    
    
}
