//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `check.png`.
    static let checkPng = Rswift.FileResource(bundle: R.hostingBundle, name: "check", pathExtension: "png")
    /// Resource file `question.png`.
    static let questionPng = Rswift.FileResource(bundle: R.hostingBundle, name: "question", pathExtension: "png")
    
    /// `bundle.url(forResource: "check", withExtension: "png")`
    static func checkPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.checkPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "question", withExtension: "png")`
    static func questionPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.questionPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 2 images.
  struct image {
    /// Image `check`.
    static let check = Rswift.ImageResource(bundle: R.hostingBundle, name: "check")
    /// Image `question`.
    static let question = Rswift.ImageResource(bundle: R.hostingBundle, name: "question")
    
    /// `UIImage(named: "check", bundle: ..., traitCollection: ...)`
    static func check(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.check, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "question", bundle: ..., traitCollection: ...)`
    static func question(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.question, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `cell`.
    static let cell: Rswift.ReuseIdentifier<ViewControllerCell> = Rswift.ReuseIdentifier(identifier: "cell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let detailViewController = StoryboardViewControllerResource<DetailViewController>(identifier: "DetailViewController")
      let name = "Main"
      let viewController = StoryboardViewControllerResource<ViewController>(identifier: "ViewController")
      
      func detailViewController(_: Void = ()) -> DetailViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: detailViewController)
      }
      
      func viewController(_: Void = ()) -> ViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: viewController)
      }
      
      static func validate() throws {
        if _R.storyboard.main().detailViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'detailViewController' could not be loaded from storyboard 'Main' as 'DetailViewController'.") }
        if _R.storyboard.main().viewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'viewController' could not be loaded from storyboard 'Main' as 'ViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
