//
//  FilterrCardCell.swift
//  PIMCenter
//
//  Created by ww on 2018/12/23.
//  Copyright © 2018年 weiwei-zhang. All rights reserved.
//

import UIKit
import SnapKit
class FilterrCardCell: UICollectionViewCell {
    
    var bgView: UIView?
    var titleLabel: UILabel?
    var tipImageView: UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.contentView.backgroundColor = UIColor.yellow
        initUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI() {
        bgView = UIView.init()
        bgView?.layer.masksToBounds = true
        bgView?.layer.cornerRadius = 10
        bgView?.backgroundColor = UIColor.gray
        self.contentView.addSubview(bgView!)
        titleLabel = UILabel.init()
        titleLabel?.textColor = UIColor.red
        titleLabel?.font = UIFont.systemFont(ofSize: 12)
        titleLabel?.textAlignment = .center
        bgView?.addSubview(titleLabel!)
        
        tipImageView = UIImageView()
        tipImageView?.image = UIImage.init(named: "home_btn_delete")
        bgView?.addSubview(tipImageView!)
        
        bgView!.snp.makeConstraints({ (make) in
//            make.right.equalTo(self.contentView.snp_rightMargin).offset(-10)
//            make.height.equalTo(44)
//            make.left.equalTo(self.contentView.snp_leftMargin).offset(10)
            make.edges.equalTo(self.contentView)
            
        })
        
        titleLabel!.snp.makeConstraints({ (make) in
//            make.center.equalTo((bgView?.center)!)
            make.edges.equalTo(bgView!)
            
        })
        tipImageView!.snp.makeConstraints { (make) in
            make.right.equalTo((bgView?.snp_leftMargin)!)
            make.bottom.equalTo((bgView?.snp_bottomMargin)!)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
    }
    
}
