//
//  GenreCollectionViewCell.swift
//  SpotifyClone
//
//  Created by Alpsu Dilbilir on 23.08.2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "GenreCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "music.quarternote.3", withConfiguration: UIImage.SymbolConfiguration(
            pointSize: 50,
            weight: .regular))
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textColor = .white
        return label
    }()
    
    private let colors: [UIColor] = [
        .systemPink, .systemPurple, .systemRed, .systemGreen, .systemBlue, .systemTeal,
        .systemBrown, .systemGray, .systemMint, .systemCyan, .systemYellow, .systemOrange,
        .darkGray
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = colors.randomElement()
        contentView.addSubview(label)
        contentView.addSubview(imageView)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
        imageView.image = nil
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 10,
            y: contentView.heigth - contentView.heigth / 2,
            width: contentView.width,
            height: contentView.heigth / 2)
        imageView.frame = CGRect(
            x: contentView.width / 2 ,
            y: 7,
            width: contentView.width / 2,
            height: contentView.heigth / 2)
    }
    
    func configure(with word: String) {
        label.text = word
    }
    
   
    
}
