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
    
    func getDeviceDpi() -> CGFloat {
        let pixelRatio = getPixelRatio();
        let idiom = UI_USER_INTERFACE_IDIOM()
        
        switch idiom {
        case UIUserInterfaceIdiom.pad:
            return 132 * pixelRatio
        case UIUserInterfaceIdiom.phone:
            return 163 * pixelRatio;
        default:
            return 160 * pixelRatio;
        }
    }
    
    @objc
    func constantsToExport() -> [AnyHashable : Any]! {
        return [
            "pixelRatio": getPixelRatio(),
            "dpi": getDeviceDpi()
        ]
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
