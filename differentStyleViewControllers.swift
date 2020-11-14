//
//  differentStyleViewControllers.swift
//  StyleViewControllers
//
//  Created by Nicolás Acosta on 14/11/2020.
//


import Foundation
import UIKit



//   INTERFACE STYLE         STATUS BAR STYLE

//      dark mode     -->      ligth content     (white letters and icons in status bar)
//      light mode    -->      dark content      (black letters and icons in status bar)



//
//                    Add the following key-value to your project's info.plist file:
//  IMPORTANT   ->
//                    View controller-based status bar appearance   Boolean     YES
//



class DifferentStyleViewController : UIViewController {
    
    //  Overrides de view controller's preferredStatusBarStyle depending on the current user interface style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        let currentUserInterfaceStyle = traitCollection.userInterfaceStyle
        switch currentUserInterfaceStyle {
        case .unspecified:
            return .lightContent
        case .light:
            return .darkContent
        case .dark:
            return .lightContent
        @unknown default:
            return .lightContent
        }
    }
    
    //  setNeedsStatusBarAppearanceUpdate() checks the preferredStatusBarStyle and changes the status bar style if applicable.
    
    //  Every time the user interface style is changed, status bar style will be changed if applicable.
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //  Every time the view controller is loaded, status bar style will be changed if applicable.
    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //
    //  IMPORTANT: When using this class, remember to keep the super.viewDidLoad() in your viewDidLoad() override method.
    //
    
    
}





class DifferentStyleNavigationController : UINavigationController {
    
    //  Overrides de view controller's preferredStatusBarStyle depending on the current user interface style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        let currentUserInterfaceStyle = traitCollection.userInterfaceStyle
        switch currentUserInterfaceStyle {
        case .unspecified:
            return .lightContent
        case .light:
            return .darkContent
        case .dark:
            return .lightContent
        @unknown default:
            return .lightContent
        }
    }
    
    //  setNeedsStatusBarAppearanceUpdate() checks the preferredStatusBarStyle and changes the status bar style if applicable.
    
    //  Every time the user interface style is changed, status bar style will be changed if applicable.
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //  Every time the view controller is loaded, status bar style will be changed if applicable.
    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //
    //  IMPORTANT: When using this class, remember to keep the super.viewDidLoad() in your viewDidLoad() override method.
    //
    
    
}





class DifferentStyleTabBarController : UITabBarController {
    
    //  Overrides de view controller's preferredStatusBarStyle depending on the current user interface style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        let currentUserInterfaceStyle = traitCollection.userInterfaceStyle
        switch currentUserInterfaceStyle {
        case .unspecified:
            return .lightContent
        case .light:
            return .darkContent
        case .dark:
            return .lightContent
        @unknown default:
            return .lightContent
        }
    }
    
    //  setNeedsStatusBarAppearanceUpdate() checks the preferredStatusBarStyle and changes the status bar style if applicable.
    
    //  Every time the user interface style is changed, status bar style will be changed if applicable.
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //  Every time the view controller is loaded, status bar style will be changed if applicable.
    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    //
    //  IMPORTANT: When using this class, remember to keep the super.viewDidLoad() in your viewDidLoad() override method.
    //
    
    
}



