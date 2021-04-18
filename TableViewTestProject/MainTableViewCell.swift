//
//  MainTableViewCell.swift
//  TableViewTestProject
//
//  Created by 柴田謙真 on 2021/04/18.
//

import UIKit

class MainTableViewCell: UITableViewCell{
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
