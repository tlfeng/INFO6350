//
//  TableHeaderViewCell.swift
//  bleproject
//
//  Created by Tianli Feng on 4/20/19.
//  Copyright © 2019 Tianli Feng. All rights reserved.
//

import UIKit

class TableHeaderViewCell:UITableViewCell
{
    var height:CGFloat = 30.0
    var label:UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(reuseIdentifier cellId:String)
    {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier:cellId)
    }
    
    class func getHeight() -> CGFloat
    {
        return 30.0
    }
    
    func setDate(_ value:Date)
    {
        self.height  = 30.0
        let dateFormatter =  DateFormatter()
        dateFormatter.dateFormat = "yyyy年MM月dd日"
        let text =  dateFormatter.string(from: value)
        
        if (self.label != nil)
        {
            self.label.text = text
            return
        }
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        self.label = UILabel(frame:CGRect(x: CGFloat(0), y: CGFloat(0), width: self.frame.size.width, height: height))
        
        self.label.text = text
        self.label.font = UIFont.boldSystemFont(ofSize: 12)
        
        self.label.textAlignment = NSTextAlignment.center
        self.label.shadowOffset = CGSize(width: 0, height: 1)
        self.label.shadowColor = UIColor.white
        
        self.label.textColor = UIColor.darkGray
        
        self.label.backgroundColor = UIColor.clear
        
        self.addSubview(self.label)
    }
}
