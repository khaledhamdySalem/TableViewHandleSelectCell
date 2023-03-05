//
//  HomeTableViewCell.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"
    
    let icon = AspectFitImageView(image: UIImage.custom(name: .language))
    
    let titleLabel = UILabel(
        text: "Language",
        font: UIFont.systemFont(ofSize: 23),
        textColor: UIColor.black
    )
    
    let nextIcon = AspectFitImageView(
        image: SFSymbols.next,
        tintColor: UIColor.blue
    )
    
    var stackView = UIStackView()
    
    // MARK: - LifeCycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
        addConstraints()
    }
    
    private func configureView() {
        backgroundColor = .systemBackground
        addSubviews(stackView)
        configureStackView()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.heightAnchor.constraint(equalToConstant: 40),
            icon.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func configureStackView() {
        stackView.addArrangedSubview(icon)
        stackView.addArrangedSubview(titleLabel)
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Configure
    public func configure(with viewModel: HomeTableViewCellViewModel) {
        icon.image = viewModel.icon
        titleLabel.text = viewModel.title
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
