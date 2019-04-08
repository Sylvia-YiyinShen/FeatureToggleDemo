//
//  SettingsBundleManager.swift
//  FeatureToggle
//
//  Created by Zhihui Sun on 8/4/19.
//  Copyright © 2019 Sylvia Shen. All rights reserved.
//

import Foundation

class SettingsBundleManager {
    static func isFeatureEnabled(forKey key: FeatureToggleKeys) -> Bool {
        return UserDefaults.standard.bool(forKey: key.rawValue)
    }
}

enum FeatureToggleKeys: String {
    // toggle switch item Identifier value
    case enableUpdateLabel = "enable_update_label"
}


class FeatureToogle {
    private init() {}
    static let shared = FeatureToogle()

    var enabledUpdateLabel: Bool {
        return SettingsBundleManager.isFeatureEnabled(forKey: FeatureToggleKeys.enableUpdateLabel)
    }
}



