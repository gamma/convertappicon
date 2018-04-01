//
//  Help.swift
//  convertappicon
//
//  Created by kreait on 01.04.18.
//  Copyright © 2018 kreait. All rights reserved.
//

import Foundation


struct Helper {

    enum Verbosity {

        case short
        case long
    }

    func output(_ verbosity: Verbosity) {

        print ("convertappicon [-c|-h] SRCROOT")
        switch verbosity {
        case .short:
            ()
        case .long:
            print("'convertappicon' converts a pdf into multiple app icon sizes for iOS")
            print("-c : Will clean the target folder first.")
            print("-h : Will show this help.")
            print("SRCROOT : The last parameter is the (partial) path to the destination .appiconset folder.")
            print("Providing ${SRCROOT} in a target build script is usually enough but if you have multiple icons, you must provide the full folder path.")
            print("\nIMPORTANT: The master PDF file must be placed into the project as well right alongside the destination AppIcon with an additional tailing 'Pdf' name.")
            print("Example: if you target app icon is called 'AppIcon' then create an image asset with 'AppIconPdf' with only the pdf inside (although you do *not* need to bundle/copy the pdf to the target itself).")
        }
    }
}