//
//  RNExactRatioModule.swift
//  RNExactRatioModule
//
//  Copyright © 2022 Khuongnb. All rights reserved.
//

import Foundation
import UIKit

@objc(RNExactRatioModule)
class RNExactRatioModule: NSObject {
    func getPixelRatio() -> CGFloat {
        return UIScreen.main.nativeScale
    }

    func guessDeviceDpi() -> CGFloat {
        let pixelRatio = getPixelRatio();
        let idiom = UI_USER_INTERFACE_IDIOM()
        let screen = UIScreen.main

        if idiom == .pad {
            return 132 * pixelRatio
        }
        if screen.scale == 3 {
            return screen.nativeScale == 3 ? 153 * pixelRatio : 134 * pixelRatio
        }
        return 163 * pixelRatio
    }

    @objc
    func constantsToExport() -> [AnyHashable : Any]! {
        return [
            "pixelRatio": getPixelRatio(),
            "dpi": guessDeviceDpi()
        ]
    }

    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
