import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCell"
    
    // MARK: - Elements
    
    private let settingImageViewContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let settingImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .left
        img.contentMode = .center
        img.layer.cornerRadius = 10
        img.translatesAutoresizingMaskIntoConstraints = false
        img.tintColor = .white
        return img
    }()
    
    private let nameSetting: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let additionalImageContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let additionalImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.tintColor = .red
        return img
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayouts()
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        settingImageView.image = nil
        nameSetting.text = nil
        settingImageViewContainer.backgroundColor = nil
        additionalImage.image = nil
    }
    
    // MARK: - Private functions
    
    private func setupHierarchy() {
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(settingImageViewContainer)
        stackView.addArrangedSubview(nameSetting)
        stackView.addArrangedSubview(additionalImageContainer)
        additionalImageContainer.addSubview(additionalImage)
        settingImageViewContainer.addSubview(settingImageView)
    }
    
    private func setupLayouts() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -45),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: leftAnchor),
            settingImageViewContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
            settingImageViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            settingImageViewContainer.widthAnchor.constraint(equalToConstant: 40),
            settingImageViewContainer.heightAnchor.constraint(equalToConstant: 40),
            settingImageView.centerYAnchor.constraint(equalTo: settingImageViewContainer.centerYAnchor),
            settingImageView.centerXAnchor.constraint(equalTo: settingImageViewContainer.centerXAnchor),
            settingImageView.widthAnchor.constraint(equalToConstant: 35),
            settingImageView.heightAnchor.constraint(equalToConstant: 35),
            nameSetting.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            nameSetting.leftAnchor.constraint(equalTo: settingImageViewContainer.rightAnchor, constant: 5),
            nameSetting.rightAnchor.constraint(equalTo: additionalImageContainer.leftAnchor),
            additionalImageContainer.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            additionalImageContainer.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            additionalImageContainer.widthAnchor.constraint(equalToConstant: 20),
            additionalImageContainer.heightAnchor.constraint(equalToConstant: 20),
            additionalImage.centerYAnchor.constraint(equalTo: additionalImageContainer.centerYAnchor),
            additionalImage.trailingAnchor.constraint(equalTo: additionalImageContainer.trailingAnchor),
            additionalImage.widthAnchor.constraint(equalToConstant: 30),
            additionalImage.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    // MARK: - Configuration
    
    public func configure(with model: SettingsImageOption) {
        nameSetting.text = model.title
        settingImageView.image = UIImage(systemName: model.icon)
        settingImageView.backgroundColor = UIColor(named: model.iconBackgroundColor)
        additionalImage.image = UIImage(systemName: model.additionImage)
    }
}


