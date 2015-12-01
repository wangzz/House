//
//  ViewController.swift
//  House
//
//  Created by wangzz on 15/12/1.
//  Copyright (c) 2015年 wangzz. All rights reserved.
//

import UIKit

enum AgentType: Int {
    case LianJia = 0            // 链家
    case WoAiWoJia = 1          // 我爱我家
}

enum LoanType: Int {
    case AccumulationFund = 0   // 公积金贷款
    case Combined = 1           // 组合贷款
    case Commercial = 2         // 商业贷款
    
}

class ViewController: UIViewController {
    
    @IBOutlet var priceTextField: UITextField!
    @IBOutlet var loanTypeSegmentedControl: UISegmentedControl!
    @IBOutlet var agentSegmentedControl: UISegmentedControl!
    @IBOutlet var commissionTextField: UITextField!
    @IBOutlet var resultTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        self.agentSegmentedControl.selectedSegmentIndex = AgentType.LianJia.rawValue
        self.commissionTextField.text = "2.7"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    // 计算首付总额
    func calculateDownPayment()->Float {
        let price = (self.priceTextField.text as NSString).floatValue
        if self.priceTextField.text.isEmpty || (price <= 0) {
            return -1;
        }
        
        
        
        
        return 0;
    }
    
    @IBAction func onCalculateButtonAction(sender: AnyObject) {
        // 首付
        // 首付详情
        // 月供
        // 月供详情
        
        // 评估费 （公积金1500，商业贷款600）
        // 公积金基金 （公积金贷款才有，总额的千分之三）

        let downPayment = self.calculateDownPayment()
        
    }
    
    @IBAction func segmentedControlValueChanged(sender: AnyObject) {
        if sender === self.agentSegmentedControl {
            let agent:AgentType = AgentType.init(rawValue:self.agentSegmentedControl.selectedSegmentIndex)!
            switch (agent) {
            case .LianJia:
                self.commissionTextField.text = "2.7"
            case .WoAiWoJia:
                self.commissionTextField.text = "1"
            }
        } else if sender === self.loanTypeSegmentedControl {
            
        }
    }
    
    @IBAction func onTapGesture(sender: AnyObject) {
        self.view.endEditing(true);
    }
}

