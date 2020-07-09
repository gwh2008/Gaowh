//
//  ViewController.swift
//  Gaowh
//
//  Created by gaowenhui on 07.06.2020.
//  Copyright © 2020 gaowenhui All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    var miePoints = 0
    let array = ["tas","kagit","makas"] // 已创建字符串类型的字符串。
    
    // MARK: - IBOutlets
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!
    @IBOutlet weak var miePointsLabel: UILabel!
    
    // mie触发的事件: - IBActions
    @IBAction func mieSelected(_ sender: Any) {
        //miePointsLabel.text = " 咩~ "
        miePoints += 1
        var str = "Hello"
         str = str + " gaowenhui"
         str = "\(str)\(miePoints),test,\(200)"
        print(str)
        
        miePointsLabel.text = String(str)
    }
    
    // MARK: - IBActions
    @IBAction func rockSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // 目录中的随机元素。
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "你的选择是：锤头。"
            pcChoiseLabel.text = "电脑选择是：锤头"
            theEndLabel.text = "平手"
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "你的选择是：锤头。"
            pcChoiseLabel.text = "计算机选择：包袱"
            theEndLabel.text = "电脑赢了。"
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "你的选择是：锤头。"
            pcChoiseLabel.text = "计算机选择：剪刀"
            theEndLabel.text = "你赢了。"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
        }
    }
    
    
    // 文书工作
    @IBAction func paperSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // 目录中的随机元素。
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "你的选择是：包袱"
            pcChoiseLabel.text = "电脑选择：锤头"
            theEndLabel.text = "你赢了。"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "你的选择是：包袱"
            pcChoiseLabel.text = "计算机选择：包袱"
            theEndLabel.text = "你们打平。"
            
        
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "你的选择是：包袱"
            pcChoiseLabel.text = "计算机选择：剪刀"
            theEndLabel.text = "电脑赢了。"
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }
        
    }
    
    // MACE相关程序
    @IBAction func scissorSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // 目录中的随机元素。
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "你的选择是：剪刀"
            pcChoiseLabel.text = "电脑选择：锤头"
            theEndLabel.text = "电脑赢了。"
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "你的选择是：剪刀"
            pcChoiseLabel.text = "计算机选择：包袱"
            theEndLabel.text = "你赢了。"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
           
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "你的选择是：剪刀"
            pcChoiseLabel.text = "电脑选择：剪刀"
            theEndLabel.text = "打平"
           
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 加载视图后，通常从一个笔尖执行任何附加设置
    }




}

