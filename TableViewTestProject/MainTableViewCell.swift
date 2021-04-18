//
//  MainTableViewCell.swift
//  TableViewTestProject
//
//  Created by 柴田謙真 on 2021/04/18.
//

import UIKit

class MainTableViewCell: UITableViewCell{
    
    let playerImageViewWith: CGFloat = 50
    
    let playerImageView: UIImageView = {
       let iv = UIImageView()
        iv.backgroundColor = .blue
        //画像のアスペクト比を調整する
        iv.contentMode = .scaleAspectFill
        //画像がはみ出そうなら調整する
        iv.clipsToBounds = true
        //配列を設定するとき必ず書くもの
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "ここに名前が入ります"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(playerImageView)
        addSubview(nameLabel)
        
        [
            //imageを左から10空ける
            playerImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            //上下中央に揃える
            playerImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            //横幅の設定
            playerImageView.widthAnchor.constraint(equalToConstant: 50),
            //高さの設定
            playerImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leftAnchor.constraint(equalTo: playerImageView.rightAnchor, constant: 20),
            nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ].forEach{ $0.isActive = true } //上記配列の中それぞれに対して操作を行う
        //imageを丸くする
        playerImageView.layer.cornerRadius = playerImageViewWith / 2
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
