//
//  PersonInfo.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/01/2021.
//  Copyright © 2021 Telecom Nancy. All rights reserved.
//

import UIKit

/*class PersonInfo: UIView {
 private var buttonTitles:[String]!
 private var buttons:[UIButton]
 private var selectorView: UIView!
 
 var textColor:UIColor = .black
 var selectorViewColor: UIColor = .red
 var selectorTextColor : UIColor = .red
 
    private func configStackView() {
        let stack = UIStackView(arrangedSubviews : buttons)
            stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        addSubview(stack)
    stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo : self.topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo : self.bottomAnchor).isActive = true
        stack.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stack.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    
    }
    private func configSelectorView() {
        let selectorWidth = frame.width / CGFloat(self.buttonTitles.count)
        
        selectorView = UIView(frame : CGRect(x: 0, y : self.frame.height, width: selectorWidth, height: 2))
        
        selectorView.backgroundColor = selectorViewColor
        addSubview(selectorView)
    }
    private func createButton() {
        buttons = [UIButton]()
        buttons.removeAll()
        subviews.forEach({$0.removeFromSuperview()})
        for buttonTitle in buttonTitles{
            let button = UIButton(type : .system)
            button.setTitle(buttonTitle, for : .normal)
            button.addTarget(self, action:#selector(PersonInfo.buttonAction(sender:)), for: .touchUpInside)
            button.setTitleColor(textColor, for: .normal)
            buttons.append(button)
            
        }
buttons[0].setTitleColor(selectorTextColor, for: .normal)    }
    
    @objc func buttonAction(sender: UIButton)
    {
        
    for (buttonIndex, btn) in buttons.enumerated(){
        btn.setTitleColor(textColor, for: .normal)
        if btn == sender {
            let selectorPosition = frame.width/CGFloat(buttonTitles.count) * CGFloat(buttonIndex)
            UIView.animate(withDuration: 0.3){
                self.selectorView.frame.origin.x = selectorPosition
            }
            btn.setTitleColor(selectorTextColor, for: .normal)
        }
    
    }
    }
    
    private func updateView()
    {
        createButton()
        configSelectorView()
        configStackView()
    }
    
    convenience init(frame:CGRect, buttonTitle:[String]){
        self.init(frame: frame, buttonTitle: [String])
        self.buttonTitles = buttonTitle
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        updateView()
    }
    func setButtonTitles(buttonTitles:[String]){
        self.buttonTitles = buttonTitles
        updateView()
    }
    
 }
*/
