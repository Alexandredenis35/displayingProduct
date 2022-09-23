//
//  Models.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import Foundation
import UIKit

struct Section {
    let title: String
    let options: [SettingsOption]
}

class SettingsOption {
    let title: String
    let titleColor: UIColor
    let icon: UIImage?
    let iconTintColor: UIColor?
    let showArrow: Bool
    let handler: () -> Void
    
    
    init(title: String,
         titleColor: UIColor = .black,
         icon: UIImage?,
         iconTintColor: UIColor?,
         showArrow: Bool,
         handler: @escaping () -> Void) {
        self.title = title
        self.titleColor = titleColor
        self.icon = icon
        self.iconTintColor = iconTintColor
        self.showArrow = showArrow
        self.handler = handler
    }
}
