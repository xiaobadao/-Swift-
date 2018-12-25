//
//  FilterSectionReusableView.swift
//  PIMCenter
//
//  Created by ww on 2018/12/23.
//  Copyright © 2018年 weiwei-zhang. All rights reserved.
//

import UIKit
import SnapKit

class FilterSectionReusableView: UICollectionReusableView {
    var titleLabel : UILabel?
    var arrowButton : UIButton?
    var arrowButtonBlock : ((UIButton)->())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI(){
        
        titleLabel = UILabel.init()
       self.addSubview(titleLabel!)
        titleLabel?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp_leftMargin).offset(10)
            make.centerY.equalTo(self.snp_centerYWithinMargins)
        })
        
        
        arrowButton = UIButton.init()
      
       self.addSubview(arrowButton!)
        arrowButton?.setTitleColor(UIColor.red, for: .normal)
        arrowButton?.setTitle("展开", for: .normal)
        arrowButton?.setTitle("合", for: .selected)
        arrowButton?.setImage(UIImage.init(named: "home_icon_down"), for: .normal)
        arrowButton?.setImage(UIImage.init(named: "home_icon_up"), for: .selected)
        arrowButton?.addTarget(self, action: #selector(arrowButtonAction(button:)), for: .touchUpInside)
        arrowButton?.snp.makeConstraints({ (make) in
            make.right.equalTo(self.snp_rightMargin).offset(-10)
            make.centerY.equalTo(self.snp_centerYWithinMargins)
        })
        
    }
    
    @objc func arrowButtonAction(button : UIButton) {
        button.isSelected = !button.isSelected
        if let _ = self.arrowButtonBlock {
            self.arrowButtonBlock!(button)
        }
    }
}
