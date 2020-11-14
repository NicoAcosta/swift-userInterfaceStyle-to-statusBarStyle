# Swfit: User Interface Style to Status Bar Style


### Change Status Bar Style depending on User Interface Style


## Instructions


1. Add `differentStyleViewControllers.swift` and `sameStyleViewControllers.swift` files to your project.


1. Add the following key-value to your project's `info.plist` file: `View controller-based status bar appearance` - `YES` (type: `Boolean`)


1. Change your ViewController, NavigationController or TabBarController superclass to the one of the following:


|  | UIViewController | UINavigationController | UITabBarController |
|---|---|---|---|
| Same style | SameStyleViewController | SameStyleNavigationController | SameStyleTabBarController |
| Different style | DifferentStyleViewController | DifferentStyleNavigationController | DifferentStyleTabBarController |

|  | UserInterFaceStyle | StatusBarStyle | Status Bar letters and icons |
|---|---|---|---|
|Same Style| `.light` (dark mode off) | `.lightContent` | white |
|^^|  `.dark` (dark mode on) | `.darkContent` | black |
|Different Style| `.light` (dark mode off) | `.darkContent` | black |
|^^|  `.dark` (dark mode on) | `.lightContent` | white |


Replacing:

```swift
    class MyViewController : UIViewController {
        // some code
    }
```


with:

```swift
    class MyViewController : SameStyleViewController {
        // some code
    }
```


4. Remember to include the `super.viewDidLoad()` method at the beginning of your subclass' `override method viewDidLoad()`


```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        // some other code
    }
```

