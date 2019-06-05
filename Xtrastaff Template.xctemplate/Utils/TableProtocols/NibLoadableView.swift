////
////  NibLoadableView.swift
////  The New Life Challenge
////
////  Created by Bishal Ghimire on 9/26/16.
////  Copyright © 2016 bigBsoft. All rights reserved.
////
//// https://www.natashatherobot.com/swift-3-0-refactoring-cues/
//
//import UIKit
//
//protocol NibLoadableView: class { }
//
//extension NibLoadableView where Self: UIView {
//  
//  static var nibName: String {
//    // notice the new describing here
//    // now only one place to refactor if describing is removed in the future
//    return String(describing: self)
//  }
//}
//
//// Now all UITableViewCells have the nibName variable
//// you can also apply this to UICollectionViewCells if you have those
//// Note that if you have some cells that DO NOT load from a Nib vs some that do,
//// extend the cells individually vs all of them as below!
//// In my project, all cells load from a Nib.
//extension UITableViewCell: NibLoadableView { }
//
//
//protocol ReusableView: class {}
//
//extension ReusableView where Self: UIView {
//  
//  static var reuseIdentifier: String {
//    return String(describing: self)
//  }
//  
//}
//
//extension UITableViewCell: ReusableView { }
//
////  UITableViewExtension.swift
//
//extension UITableView {
//  
//  func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
//    let nib = UINib(nibName: T.nibName, bundle: nil)
//    register(nib, forCellReuseIdentifier: T.reuseIdentifier)
//  }
//  
//  func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
//    guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
//      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//    }
//    return cell
//  }
//  
//  func dequeueReusableCell<T: UITableViewCell>(forSection section: Int) -> T where T: ReusableView {
//    guard let cell = dequeueReusableCell(withIdentifier:  T.reuseIdentifier) as? T else {
//      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//    }
//    return cell
//  }
//  
//}
//
//
//extension UICollectionView: ReusableView { }
//
//extension UICollectionView {
//  
//  func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
//    let nib = UINib(nibName: T.nibName, bundle: nil)
//    // register(nib, forCellReuseIdentifier: T.reuseIdentifier)
//    register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
//  }
//  
//  func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
//    guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
//      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//    }
//    return cell
//  }
//  
//}
//
//// UITableViewCell
//extension UICollectionView {
//  
//  func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
//    let nib = UINib(nibName: T.nibName, bundle: nil)
//    // register(nib, forCellReuseIdentifier: T.reuseIdentifier)
//    register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
//  }
//  
//  func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
//    guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
//      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//    }
//    return cell
//  }
//  
//}
//
//// UICollectionReusableView
//
//extension UICollectionView {
//  
//  func register<T: UICollectionReusableView>(_: T.Type) where T: ReusableView, T: NibLoadableView {
//    let nib = UINib(nibName: T.nibName, bundle: nil)
//    // register(nib, forCellReuseIdentifier: T.reuseIdentifier)
//    register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
//  }
//  
//  func dequeueReusableCell<T: UICollectionReusableView>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
//    guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
//      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//    }
//    return cell
//  }
//  
//}
//
//
