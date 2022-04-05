//
//  TableSettingsModel.swift
//  iOS5-HW15-TableSettings
//
//  Created by Дарья Кретюк on 05.04.2022.
//

import Foundation

final class TableSettingsModel {
    
    func createModels() -> [Section] {
        return [
            Section(title: "", options: [
                .switchCell(model: SettingsSwitchOption(title: "Авиарежим", icon: "airplane", iconBackgroundColor: "systemOrange", isOn: false) {
                    print("Нажата ячейка Авиарежим")
                }),
                .staticCell(model: SettingsOption(title: "Wi-Fi", icon: "wifi", iconBackgroundColor: "systemBlue") {
                    print("Нажата ячейка Wi-Fi")
                }),
                .staticCell(model: SettingsOption(title: "Bluetooth", icon: "bluetooth.white.2", iconBackgroundColor: "systemBlue", handler: {
                    print("Нажата ячейка Bluetooth")
                })),
                .staticCell(model: SettingsOption(title: "Сотовая связь", icon: "antenna.radiowaves.left.and.right", iconBackgroundColor: "systemGreen") {
                    print("Нажата ячейка Сотовая связь")
                }),
                .staticCell(model: SettingsOption(title: "Режим модема", icon: "personalhotspot", iconBackgroundColor: "systemGreen") {
                    print("Нажата ячейка Режим модема")
                }),
                .switchCell(model: SettingsSwitchOption(title: "VPN", icon: "vpn.white", iconBackgroundColor: "systemBlue", isOn: false) {
                    print("Нажата ячейка VPN")
                })
            ]),
                
            Section(title: "", options: [
                .staticCell(model: SettingsOption(title: "Уведомления", icon: "bell.badge.fill", iconBackgroundColor: "systemRed") {
                    print("Нажата ячейка Уведомления")
                }),
                .staticCell(model: SettingsOption(title: "Звуки, тактильные сигналы", icon: "volume.3.fill", iconBackgroundColor: "systemPink") {
                    print("Нажата ячейка Звуки, тактильные сигналы")
                }),
                .staticCell(model: SettingsOption(title: "Фокусирование", icon: "moon.fill", iconBackgroundColor: "systemPurple") {
                    print("Нажата ячейка Не беспокоить")
                }),
                .staticCell(model: SettingsOption(title: "Экранное время", icon: "hourglass", iconBackgroundColor: "systemPurple") {
                    print("Нажата ячейка Экранное время")
                })
            ]),
            
            Section(title: "", options: [
                .imageCell(model: SettingsImageOption(title: "Основное", icon: "gear", iconBackgroundColor: "systemGray", additionImage: "1.circle.fill") {
                    print("Нажата ячейка Основное")
                }),
                .staticCell(model: SettingsOption(title: "Пункт управления", icon: "switch.2", iconBackgroundColor: "systemGray") {
                    print("Нажата ячейка Пункт управления")
                }),
                .staticCell(model: SettingsOption(title: "Экран и яркость", icon: "textformat.size", iconBackgroundColor: "systemBlue") {
                    print("Нажата ячейка Экран и яркость")
                }),
                .staticCell(model: SettingsOption(title: "Экран \"Домой\"", icon: "square.grid.3x3", iconBackgroundColor: "systemPurple") {
                    print("Нажата ячейка Экран \"Домой\"")
                }),
                .staticCell(model: SettingsOption(title: "Универсальный доступ", icon: "figure.walk.circle", iconBackgroundColor: "systemBlue") {
                    print("Нажата ячейка Универсальный доступ")
                })
            ])
        ]
    }
}
