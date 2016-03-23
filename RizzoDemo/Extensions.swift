//
//  Extensions.swift
//  RizzoDemo
//
//  Created by KEEVIN MITCHELL on 3/23/16.
//  Copyright © 2016 beyond2021. All rights reserved.
//

import UIKit

extension UIImage {
    enum AssetIdentifier : String {
        //Strings Defined in asset Catelog
        case RizzoWithLogo1 = "RizzoWithLogo1"
        case UESButton = "UESButton"
        case ClintonButton = "ClintonButton"
        case AstoriaButton = "AstoriaButton"
        case Astoria = "Astoria"
        case UES = "UES"
        case LES = "LES"
        case BlankBGWithLogo = "BlankBGWithLogo"
        case BlankBG = "BlankBG"
        case PizzaCutter = "PizzaCutter"
        // ScrollView Images
        case ScrollView1 = "ScrollView1"
        case ScrollView2 = "ScrollView2"
        case ScrollView3 = "ScrollView3"
        case ScrollView4 = "ScrollView4"
        case ScrollView5 = "ScrollView5"
        case ScrollView6 = "ScrollView6"
        
    }
    
    
    // convenience init so that this enum is acepted instead of a string
    convenience init(assetIdentifier:AssetIdentifier){
        // NO super init because there is no Super Class
        self.init(named :assetIdentifier.rawValue)!
        
    }
    
}
