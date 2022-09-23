//
//  CustomTableViewCell.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 16/09/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    var rowWithColors: [CollectionViewCellModel]?
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Un Titre"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    
    let collectionViewLayout: UICollectionViewLayout = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = .init(width: 180, height: 300)
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame:  .zero,
                                              collectionViewLayout: collectionViewLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCollectionViewCell")
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        
        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraint() {
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(collectionView)
        
        titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 15).isActive = true
        
        
        collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
    }
    
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    // The data we passed from the TableView send them to the CollectionView Model
    func updateCellWith(row: [CollectionViewCellModel]) {
        self.rowWithColors = row
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.rowWithColors?.count ?? 0
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Set the data for each cell (color and color name)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell {
            cell.colorView.backgroundColor = self.rowWithColors?[indexPath.item].color ?? UIColor.black
            cell.titleLabel.text = self.rowWithColors?[indexPath.item].name ?? ""
            return cell
        }
        return UICollectionViewCell()
    }
    
    
    // Add spaces at the beginning and the end of the collection view
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        }
}
