//
//  PickerViewDataSource.swift
//  UIPickerView
//
//  Created by arisa03g on 2019/04/03.
//  Copyright © 2019 minagi. All rights reserved.
//

import Foundation
import UIKit

class PickerViewDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    let array = ["赤","青","黄","緑"]
    var color = ""
    
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
    
}
