//
//  ViewController.swift
//  test
//
//  Created by むむ on 2020/05/28.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 文字入れるところ
    @IBOutlet weak var inputLabel: UITextField!
    // 文字が出るところ
    @IBOutlet weak var inputfinish: UILabel!
    // ボタン
    @IBOutlet weak var inputButton: UIButton!
    
    // 最初
    override func viewDidLoad() {
        super.viewDidLoad()
//        inputLabel.text = "文字を入力してください"
        inputfinish.text = "ここに文字が出ます"
        inputButton.setTitle("入力", for: .normal)
    }
//ボタンを押したらここが動く
    @IBAction func inputStart(_ sender: UIButton) {
        inputfinish.text = inputLabel.text
        inputLabel.text = ""
    }
    // キーボード消える
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

