//
//  FilterViewControllerOne.swift
//  PIMCenter
//
//  Created by ww on 2018/12/23.
//  Copyright © 2018年 weiwei-zhang. All rights reserved.
//

import UIKit
//import SnapKit

let screen_width = UIScreen.main.bounds.size.width

let screen_height = UIScreen.main.bounds.size.height

class FilterViewControllerOne: UIViewController {
    lazy var layout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout.init()
        //        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumLineSpacing = 5
        
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
        
        return layout
    }()
    
     var collectionView : UICollectionView?
    var dataSource : [FilterModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        self.dataSource = [FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")])]
        
        
        initUI()

    }
    func initUI(){
        
         collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: screen_width, height: screen_height-75), collectionViewLayout: self.layout)
        collectionView?.backgroundColor = UIColor.white
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.register(FilterrCardCell.self, forCellWithReuseIdentifier: "FilterrCardCell")
        collectionView!.register(FilterSectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FilterSectionReusableView")
        self.view.addSubview(self.collectionView!)
//        self.collectionView?.snp.makeConstraints { (make) in
//            make.top.equalTo(self.view.top)
//            make.left.right.equalTo(self.view)
//        }
        let bottomView = UIView.init()
        self.view.addSubview(bottomView)
        bottomView.backgroundColor = UIColor.gray
        bottomView.snp.makeConstraints { (make) in
            make.top.equalTo((self.collectionView?.snp_bottomMargin)!)
            make.height.equalTo(75)
            make.left.right.equalTo(self.view)
            make.bottom.equalTo(self.view.snp_bottomMargin)
        }
        
        let resetButton = UIButton.init(type: .custom)
        resetButton.setTitleColor(UIColor.red, for: .normal)
        resetButton.setTitle("reset", for: .normal)
        resetButton.addTarget(self, action: #selector(resetAction), for: .touchUpInside)
        
        bottomView.addSubview(resetButton)
        resetButton.snp.makeConstraints { (make) in
            make.height.equalTo(35)
            make.width.equalTo(90)
            make.left.equalTo(bottomView.snp_leftMargin)
        }
        
        let sureButton = UIButton.init(type: .custom)
        sureButton.setTitleColor(UIColor.red, for: .normal)
        sureButton.setTitle("ok", for: .normal)
        sureButton.addTarget(self, action: #selector(sureButtonAction), for: .touchUpInside)
        bottomView.addSubview(sureButton)
        sureButton.snp.makeConstraints { (make) in
            make.height.equalTo(35)
            make.width.equalTo(90)
           
            make.right.equalTo(bottomView.snp_rightMargin)
        }
        
    }
    @objc func resetAction() {
        self.dataSource = [FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")]),FilterModel.init(title: "title1", contents: [ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1"),ContentModel.init(text: "gongsi1")])]
        self.collectionView?.reloadData()
        print(resetAction)
//        在这里传值
    }
    @objc func sureButtonAction() {
        print(sureButtonAction)
        var texts : [String] = [String]()
        
        for model in self.dataSource! {
            for cModel in model.contents!{
                if (cModel.isSelected){
                    texts.append(cModel.text!)
                }
            }
        }
        let str = texts.joined(separator: ",")
        print("筛选:\(str)")
        
    }

}
extension FilterViewControllerOne : UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if(indexPath.section == 0){
            return CGSize.init(width: screen_width, height: 44)
        }
        return CGSize.init(width: 90, height: 44)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let a : FilterModel = self.dataSource![section]
        
        if (section == 0){
            if a.contents!.count > 2 {
                if a.isSelected {
                    return a.contents!.count
                }
                else{
                    return 2
                }
            }
            return a.contents!.count
        }else {
            if a.contents!.count > 8 {
                if a.isSelected {
                    return a.contents!.count
                }
                else{
                    return 8
                }
            }else{
                return a.contents!.count
            }
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.dataSource!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : FilterrCardCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterrCardCell", for: indexPath) as! FilterrCardCell
        let model = self.dataSource?[indexPath.section].contents![indexPath.row]
        
        cell.titleLabel?.text = model!.text
        if (model?.isSelected == true){
            cell.titleLabel?.backgroundColor = UIColor.red
        }else{
             cell.titleLabel?.backgroundColor = UIColor.gray
        }
        return cell
    }
    
    //    //header高度
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
       
        return CGSize.init(width: screen_width, height: 44)
    }
//    //footer高度
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize.init(width: screen_width, height: 0)
//    }
    //设定header和footer的方法，根据kind不同进行不同的判断即可
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            var headerView : FilterSectionReusableView?
//            if((collectionView.viewWithTag(100 + indexPath.section)) != nil){
//                headerView? = collectionView.viewWithTag(100 + indexPath.section) as! FilterSectionReusableView
//                headerView?.backgroundColor = UIColor.gray
//                headerView?.titleLabel!.text = "This is HeaderView"
//            }else{
            headerView = (collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FilterSectionReusableView", for: indexPath) as! FilterSectionReusableView)
                headerView?.tag = 100 + indexPath.section
                headerView?.backgroundColor = UIColor.gray
                headerView?.titleLabel!.text = "This is HeaderView\(indexPath.section)"
//            for  model in (self.dataSource)! {
//                model.isSelected = btn.isSelected
            headerView?.arrowButton?.isSelected = self.dataSource![indexPath.section].isSelected
//            }
            
                
            headerView?.arrowButtonBlock = {
                (btn) in

//                for  model in (self.dataSource)! {
                    self.dataSource![indexPath.section].isSelected = btn.isSelected
//                }
//                print(btn.isSelected)
//                print(indexPath.section)
                self.collectionView?.reloadData()
                
            }
//            }
            return (headerView)!
        }
        return UICollectionReusableView.init()
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mode = self.dataSource?[indexPath.section]
        for cModel in mode!.contents!{

                if cModel == mode?.contents![indexPath.row]{
                    cModel.isSelected = true
                }else{
                    cModel.isSelected = false
                }
            }
        self.collectionView?.reloadData()
    }
}
