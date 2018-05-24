//
//  ViewController.swift
//  Calculator2
//
//  Created by JunsangYu on 17/05/2018.
//  Copyright © 2018 test-web-server. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numLbl: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpUI() {
        let btnWidth = self.view.frame.width * 0.2
        let btnHeight = self.view.frame.width * 0.2
        let margin = self.view.frame.width * 0.04
        
        view.backgroundColor = .black
        
        numLbl = {
            let view = UILabel()
            view.frame = CGRect(x: 0, y: self.view.frame.height * 0.1, width: self.view.frame.width, height: self.view.frame.height * 0.2)
            view.text = "0"
            view.font = UIFont.systemFont(ofSize: 100.0)
            view.textColor = UIColor.white
            view.textAlignment = NSTextAlignment.right
            return view
        }()
        
        let ACBtn = makeCircleBtn(x: numLbl.frame.origin.x + margin, y: numLbl.frame.origin.y + numLbl.frame.height, width: btnWidth, height: btnHeight, color: UIColor.gray, message: "AC", fontColor: UIColor.black)
        let PMBtn = makeCircleBtn(x: ACBtn.frame.origin.x + btnWidth + margin, y: numLbl.frame.origin.y + numLbl.frame.height, width: btnWidth, height: btnHeight, color: UIColor.gray, message: "+/-", fontColor: UIColor.black)
        let PercentBtn = makeCircleBtn(x: PMBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height, width: btnWidth, height: btnHeight, color: UIColor.gray, message: "%", fontColor: UIColor.black)
        let DivideBtn = makeCircleBtn(x: PercentBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height, width: btnWidth, height: btnHeight, color: UIColor.orange, message: "÷", fontColor: UIColor.white)
        
        let SevenBtn = makeCircleBtn(x: numLbl.frame.origin.x + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "7", fontColor: UIColor.white)
        let EightBtn = makeCircleBtn(x: ACBtn.frame.origin.x + btnWidth + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "8", fontColor: UIColor.white)
        let NineBtn = makeCircleBtn(x: PMBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "9", fontColor: UIColor.white)
        let MultiplyBtn = makeCircleBtn(x: PercentBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.orange, message: "×", fontColor: UIColor.white)
        
        let FourBtn = makeCircleBtn(x: numLbl.frame.origin.x + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "4", fontColor: UIColor.white)
        let FiveBtn = makeCircleBtn(x: ACBtn.frame.origin.x + btnWidth + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "5", fontColor: UIColor.white)
        let SixBtn = makeCircleBtn(x: PMBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "6", fontColor: UIColor.white)
        let MinusBtn = makeCircleBtn(x: PercentBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.orange, message: "−", fontColor: UIColor.white)
        
        let OneBtn = makeCircleBtn(x: numLbl.frame.origin.x + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "1", fontColor: UIColor.white)
        let TwoBtn = makeCircleBtn(x: ACBtn.frame.origin.x + btnWidth + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "2", fontColor: UIColor.white)
        let ThreeBtn = makeCircleBtn(x: PMBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: "3", fontColor: UIColor.white)
        let PlusBtn = makeCircleBtn(x: PercentBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.orange, message: "+", fontColor: UIColor.white)
        
        let ZeroBtn = makeCircleBtn_(x: numLbl.frame.origin.x + margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin + OneBtn.frame.height + margin, width: btnWidth * 2, height: btnHeight, color: UIColor.darkGray, message: "0", fontColor: UIColor.white)
        let DotBtn = makeCircleBtn(x: PMBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin + OneBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.darkGray, message: ".", fontColor: UIColor.white)
        let SameBtn = makeCircleBtn(x: PercentBtn.frame.origin.x + btnWidth +  margin, y: numLbl.frame.origin.y + numLbl.frame.height + ACBtn.frame.height + margin + SevenBtn.frame.height + margin + FourBtn.frame.height + margin + OneBtn.frame.height + margin, width: btnWidth, height: btnHeight, color: UIColor.orange, message: "=", fontColor: UIColor.white)
        
        
        view.addSubview(numLbl)
        
        view.addSubview(ACBtn)
        view.addSubview(PMBtn)
        view.addSubview(PercentBtn)
        view.addSubview(DivideBtn)
        
        view.addSubview(SevenBtn)
        view.addSubview(EightBtn)
        view.addSubview(NineBtn)
        view.addSubview(MultiplyBtn)
        
        view.addSubview(FourBtn)
        view.addSubview(FiveBtn)
        view.addSubview(SixBtn)
        view.addSubview(MinusBtn)
        
        view.addSubview(OneBtn)
        view.addSubview(TwoBtn)
        view.addSubview(ThreeBtn)
        view.addSubview(PlusBtn)
        
        view.addSubview(ZeroBtn)
        view.addSubview(DotBtn)
        view.addSubview(SameBtn)
    }
    
    func makeCircleBtn(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor, message: String, fontColor: UIColor) -> UIButton {
        let view = UIButton(type: .roundedRect)
        view.frame = CGRect(x: x, y: y, width: width, height: height)
        view.layer.cornerRadius = 0.5 * view.bounds.size.width
        view.clipsToBounds = true
        view.backgroundColor = color
        view.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), for: .touchUpInside)
        let btnLbl: UILabel = {
            let view = UILabel()
            view.frame = CGRect(x: 0, y: 0, width: width, height: height)
            view.text = message
            view.font = UIFont.systemFont(ofSize: 25.0)
            view.textColor = fontColor
            view.textAlignment = NSTextAlignment.center
            return view
        }()
        view.addSubview(btnLbl)
        return view
    }
    func makeCircleBtn_(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor, message: String, fontColor: UIColor) -> UIButton {
        let view = UIButton(type: .roundedRect)
        view.frame = CGRect(x: x, y: y, width: width, height: height)
        view.layer.cornerRadius = 0.225 * view.bounds.size.width
        view.clipsToBounds = true
        view.backgroundColor = color
        view.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), for: .touchUpInside)
        let btnLbl: UILabel = {
            let view = UILabel()
            view.frame = CGRect(x: 35, y: 0, width: width - 70, height: height)
            view.text = message
            view.font = UIFont.systemFont(ofSize: 25.0)
            view.textColor = fontColor
            view.textAlignment = NSTextAlignment.left
            return view
        }()
        view.addSubview(btnLbl)
        return view
    }
    
    @objc func buttonPressed(_ sender: UIButton!) {
        for subView in sender.subviews {
            if let btnNumLbl = subView as? UILabel {
                numLbl.text = btnNumLbl.text
            }
        }
    }
}

