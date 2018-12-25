//
//  FilterModel.swift
//  PIMCenter
//
//  Created by ww on 2018/12/23.
//  Copyright © 2018年 weiwei-zhang. All rights reserved.
//

import UIKit

class FilterModel: NSObject {

    var title : String?
    var isSelected : Bool = false
    var contents: [ContentModel]?
    
    init(title : String,contents : [ContentModel]){
        self.title = title
        self.contents = contents
    }
}

class ContentModel: NSObject {
    
    var isSelected : Bool = false
    var text : String?
    
    init(text : String) {
        self.text = text
    }
}
