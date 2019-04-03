//
//  ViewController.swift
//  UIPickerView
//
//  Created by minagi on 2018/12/05.
//  Copyright © 2018 minagi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak private var label: UILabel!
    @IBOutlet weak private var cancelButton: UIButton!
    @IBOutlet weak private var doneButton: UIButton!
    @IBOutlet weak var picker: UIPickerView!
    let dataSource = PickerViewDataSource()
    
    //let array = ["赤","青","黄","緑"]
    //var color = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.isHidden = true
        cancelButton.isHidden = true
        doneButton.isHidden = true
        
        picker.delegate = self
        picker.dataSource = dataSource
        picker.selectRow(0, inComponent: 0, animated: true)
    }
    /*
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
     */
    @IBAction private func tapLabel(_ sender: UILabel) {
        picker.isHidden = false
        cancelButton.isHidden = false
        doneButton.isHidden = false
    }
    

    @IBAction private func tapCancelButton(_ sender: UIButton) {
        picker.isHidden = true
    }

    @IBAction private func tapDoneButton(_ sender: UIButton) {
        switch dataSource.color {
        case "赤":
            view.backgroundColor = .red
        case "青":
            view.backgroundColor = .blue
        case "黄":
            view.backgroundColor = .yellow
        case "緑":
            view.backgroundColor = .green
        default:
            fatalError()
        }
        picker.isHidden = true
    }
}
