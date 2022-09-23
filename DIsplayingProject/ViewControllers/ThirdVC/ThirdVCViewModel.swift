//
//  ThirdVCViewModel.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import Foundation
import UIKit

struct ThirdVCViewModel {

    let models: [Section] = [
        Section(title: "",
                options: [SettingsOption(title: "Mes informations",
                                         icon: UIImage(systemName: "person"),
                                         iconTintColor: UIColor.customGreen,
                                         showArrow: true,
                                         handler: {
                                             
                                         })
                ]),
        Section(title: "A propos d'evaneos",
                options: [SettingsOption(title: "Revoir notre concept",
                                         icon: UIImage(systemName: "video"),
                                         iconTintColor: UIColor.customGreen,
                                         showArrow: false,
                                         handler: {
                                             
                                         }),
                          SettingsOption(title: "Partagez votre avis sur l'app",
                                         icon: UIImage(systemName: "megaphone"),
                                         iconTintColor: .orange,
                                         showArrow: false,
                                         handler: {
                                             
                                         }),
                          SettingsOption(title: "Politique de confidentialité",
                                         icon: UIImage(systemName: "doc.plaintext"),
                                         iconTintColor: .purple,
                                         showArrow: false,
                                         handler: {
                                             
                                         }),
                          SettingsOption(title: "Centre d'aide",
                                         icon: UIImage(systemName: "questionmark.circle"),
                                         iconTintColor: .red,
                                         showArrow: false,
                                         handler: {
                                             
                                         })
                ]),
        Section(title: "",
                options: [SettingsOption(title: "Deconnexion",
                                         titleColor: .red,
                                         icon: nil,
                                         iconTintColor: nil,
                                         showArrow: false,
                                         handler: {
                                             
                                         })
                ])
        
    ]
}
