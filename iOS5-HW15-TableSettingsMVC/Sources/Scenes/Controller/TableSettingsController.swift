import UIKit

final class TableSettingsController: UIViewController {

    var model: TableSettingsModel?

    private var onboardingView: TableSettingsView? {
        guard isViewLoaded else { return nil }
        return view as? TableSettingsView
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view = TableSettingsView()
        model = TableSettingsModel()

        configureView()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        navigationItem.title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - Configurations

private extension TableSettingsController {
    func configureView() {
        guard let models = model?.createModels() else { return }
        onboardingView?.configureView(with: models)
    }
}
