import UIKit

class CommonTableViewCell: UITableViewCell {
    
    static let identifier = "CommonTableViewCell"
    
    // MARK: - Elements
    
    private let settingImageViewContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.contentMode = .left
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
    
    private let additionalLabel: UILabel = {
        let label = UILabel()
         label.textAlignment = .right
         label.textColor = .darkGray
         return label
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

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        settingImageView.image = nil
        nameSetting.text = nil
        settingImageViewContainer.backgroundColor = nil
        additionalLabel.text = String()
    }
    
    // MARK: - Private functions
    
    private func setupHierarchy() {
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(settingImageViewContainer)
        stackView.addArrangedSubview(nameSetting)
        stackView.addArrangedSubview(additionalLabel)
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
            nameSetting.trailingAnchor.constraint(equalTo: additionalLabel.leadingAnchor),
            additionalLabel.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            additionalLabel.rightAnchor.constraint(equalTo: stackView.rightAnchor)
        ])
    }
    
    // MARK: - Configuration
    
    public func configure(with model: SettingsOption) {
        nameSetting.text = model.title
        settingImageView.image = UIImage(systemName: model.icon)
        settingImageView.backgroundColor = UIColor(named: model.iconBackgroundColor)
        
        switch nameSetting.text {
        case "Wi-Fi":
            additionalLabel.text = "Не подключено"
        case "Bluetooth":
            additionalLabel.text = "Вкл."
        default:
            break
        }
    }
}
