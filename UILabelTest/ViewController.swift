//
//  ViewController.swift
//  UILabelTest
//
//  Created by Zedd on 2017. 11. 21..
//  Copyright © 2017년 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let text = myLabel.text{
           
            //여기서 속성을 변경하고 싶은 문자열 지정
            let range = (text as NSString).range(of: "Zedd")
            myLabelAdjustFont(text, size: 50, range: range )
        }
    
        
    }

    func myLabelAdjustFont(_ text:String, size : CGFloat, range : NSRange){
       
        //폰트와 폰트 사이즈를 둘다 바꾸고 싶다면 이 상수를 addAttribute value 파라미터에 넣어주세요.
        let font = UIFont(name:"Apple Color Emoji" , size: 50)
        
        //내가 적용하고싶은 폰트 사이즈
        let fontSize = UIFont.boldSystemFont(ofSize: size)
        
        //label에 있는 Text를 NSMutableAttributedString으로 만들어준다.
        let attributedStr = NSMutableAttributedString(string: text)
        
        //위에서 만든 attributedStr에 addAttribute메소드를 통해 Attribute를 적용. kCTFontAttributeName은 value로 폰트크기와 폰트를 받을 수 있음.
        attributedStr.addAttribute(kCTFontAttributeName as String, value: fontSize, range: range)
        
        //최종적으로 내 label에 속성을 적용
        myLabel.attributedText = attributedStr
        myLabel.sizeToFit()
  
    }
    
    
    
    //Text색상 바꾸기
    func myLabelChangeColor(_ text:String, range :NSRange){
        
        let attributedString = NSMutableAttributedString(string: text)
       attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blue, range: range)
        myLabel.attributedText = attributedString
    }
    
    
    //Stoke지정 메소드
    func myLabelChangeStroke(_ text:String, range :NSRange){
        
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSStrokeWidthAttributeName, value:4.0, range: range)
        attributedString.addAttribute(NSStrokeColorAttributeName, value: UIColor.blue, range: range)
        
    }
    
    //밑줄 그어주는 메소드
    func myLabelApplyUnderline(_ text:String, range :NSRange){
        
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.styleThick.rawValue, range: range)
        
        attributedString.addAttribute(NSUnderlineColorAttributeName, value: UIColor.blue, range: range)
        
    }
    
    
    //배경 지정 메소드
    func myLabelChangeBackgroundColor(_ text:String, range :NSRange){
        
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.blue, range: range)
        
    }
    
    //Strike지정 메소드
    func myLabelApplyStrike(_ text:String, range :NSRange){
        
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSBaselineOffsetAttributeName, value: 0, range: range)
        attributedString.addAttribute(NSStrikethroughStyleAttributeName, value: 1, range:range)
        
    }
}


