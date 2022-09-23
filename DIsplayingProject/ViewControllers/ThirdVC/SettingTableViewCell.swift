//
//  SettingTableViewCell.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    static let identifier = "SettingTableViewCell"
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let hStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Doesn"t call again when reuse is called
        
        hStackView.addArrangedSubview(iconImageView)
        hStackView.addArrangedSubview(label)
        
        contentView.addSubview(hStackView)
        
        hStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        hStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        
        hStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        hStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        /*      let imageSize = 12
         iconImageView.frame = CGRect(x: 0, y: 0, width: imageSize, height: imageSize)
         iconImageView.centerYAnchor = contentView.centerYAnchor*/
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // Call when reuse method is call
        iconImageView.image = nil
        label.text = nil
    }
    
    public func configure(with model: SettingsOption) {
        label.text = model.title
        iconImageView.isHidden = model.icon == nil
        iconImageView.image = model.icon
        iconImageView.tintColor = model.iconTintColor
        label.textColor = model.titleColor
        accessoryType = model.showArrow ? .disclosureIndicator : .none
        
    }
}
