//
//  ArticleTableViewCell.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import Foundation
import UIKit
import SnapKit

class ArticleTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [ titleLabel, descriptionLabel ]
            .forEach { contentView.addSubview($0) }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(16)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
    }
}

