//
//  CustomCollectionViewCell.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 16/09/2022.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    let colorView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 180, height: 10))
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Title Label CollectionView Cell"
        label.setContentHuggingPriority(.defaultLow, for: .vertical)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(colorView)
        //  self.contentView.addSubview(titleLabel)
        print("frame => \(colorView.frame) \(frame)")
        colorView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        colorView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        colorView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        //  colorView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        colorView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        
        
        //  titleLabel.topAnchor.constraint(equalTo: self.colorView.bottomAnchor).isActive = true
        
        
        //   titleLabel.rightAnchor.constraint(equalTo: self.contentView.rightAnchor).isActive = true
        //   titleLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        
        //  titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        print(colorView.frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
