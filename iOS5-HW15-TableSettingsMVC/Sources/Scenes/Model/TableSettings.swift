//
//  TableSettings.swift
//  iOS5-HW15-TableSettings
//
//  Created by Дарья Кретюк on 05.04.2022.
//

struct Section {
    let title: String
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
    case imageCell(model: SettingsImageOption)
}

struct SettingsOption {
    let title: String
    let icon: String
    let iconBackgroundColor: String
    let handler: (() -> Void)
}

struct SettingsSwitchOption {
    let title: String
    let icon: String
    let iconBackgroundColor: String
    var isOn: Bool
    let handler: (() -> Void)
}

struct SettingsImageOption {
    let title: String
    let icon: String
    let iconBackgroundColor: String
    let additionImage: String
    let handler: (() -> Void)
}
