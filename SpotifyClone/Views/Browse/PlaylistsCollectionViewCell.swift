//
//  FeaturedPlaylistsCollectionViewCell.swift
//  SpotifyClone
//
//  Created by Alpsu Dilbilir on 15.08.2022.
//

import UIKit
import SDWebImage
class PlaylistsCollectionViewCell: UICollectionViewCell {
    static let identifier = "FeaturedPlaylistsCollectionViewCell"
    
    private var playlistCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 8
        contentView.addSubview(playlistCoverImageView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepareForReuse() {
        playlistCoverImageView.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playlistCoverImageView.sizeToFit()
        
        playlistCoverImageView.frame = CGRect(
            x: 0,
            y: 0,
            width: contentView.width,
            height: contentView.heigth)

    }
    
    func configure(with viewModel: PlaylistCellViewModel) {
        playlistCoverImageView.sd_setImage(with: viewModel.artworkURL)
    }
}
