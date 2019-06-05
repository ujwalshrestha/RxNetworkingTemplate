//
//  SportFont.swift
//  SportsPass
//
//  Created by Braindigit on 3/24/16.
//  Copyright © 2017 com.redeem. All rights reserved.
//

import Foundation
import UIKit
import UIColor_Hex_Swift


extension UIColor{
    
    class func masterColor() -> UIColor {
        return .red
    }
    
    class func upperRedColor() -> UIColor {
        return UIColor(red: 235.0/255, green: 28.0/255, blue: 20.0/255, alpha: 1.0)
    }
    
    class func lowerRedColor() -> UIColor {
        return UIColor(red: 238.0/255, green: 27.0/255, blue: 45.0/255, alpha: 1.0)
    }
    
    class func primaryRedColor() -> UIColor {
        //return UIColor(red: 235.0/255, green: 28.0/255, blue: 32.0/255, alpha: 1.0)
        return UIColor(red: 237.0/255, green: 26.0/255, blue: 56.0/255, alpha: 1.0)
    }
    
    class func globalAppRedColor() -> UIColor {
        return UIColor(red: 236.0/255, green: 29.0/255, blue: 33.0/255, alpha: 1.0)
    }
    class func androidLightGrayColor() -> UIColor {
        return UIColor(red: 223.0/255, green: 223.0/255, blue: 223.0/255, alpha: 1.0)
    }
    
    class func offerGreenColor() -> UIColor{
        return UIColor(red: 227.0/255, green: 255.0/255, blue: 206.0/255, alpha: 1.0)
    }
    
    class func primaryRedColorAlpha() -> UIColor {
        return UIColor(red: 235.0/255, green: 28.0/255, blue: 32.0/255, alpha: 0.6)
    }
    
    class func SecondaryRedColor() -> UIColor {
        return UIColor(red: 237.0/255, green: 26.0/255, blue: 56.0/255, alpha: 1.0)
    }
    
    class func redHighLightColor() -> UIColor {
        return .red
    }
    
    class func lightGrayExtension() -> UIColor {
        return UIColor(red: 179.0/255, green: 179.0/255, blue: 179.0/255, alpha: 1.0)
    }
    
    class func heavyLightGrayExtension() -> UIColor{
        return UIColor(red: 237.0/255, green: 237.0/255, blue: 237.0/255, alpha: 1.0)
    }
    
    class func whiteHighLightColor() -> UIColor {
        return UIColor(red: 237.0/255, green: 26.0/255, blue: 56.0/255, alpha: 0.2)
    }
    
    class func primaryGradientColor() -> UIColor {
        return .red
    }
    
    class func primaryMessageColor() -> UIColor {
        return UIColor(red: 116.0/255, green: 116.0/255, blue: 116.0/255, alpha: 1.0)
    }
    
    class func primaryTextColor() -> UIColor {
        return UIColor(red: 33.0/255, green: 33.0/255, blue: 33.0/255, alpha: 1.0)
    }
    
    class func descriptionTextColor() -> UIColor {
        return UIColor(red: 59.0/255, green: 59.0/255, blue: 59.0/255, alpha: 1.0)
    }
    
    class func badgeColor() -> UIColor {
        return UIColor(red: 226.0/255, green: 99.0/255, blue: 26.0/255, alpha: 1.0)
    }
    
    class func lowerFocusColor() -> UIColor {
        return UIColor(red: 158.0/255, green: 158.0/255, blue: 158.0/255, alpha: 1.0)
    }
    
    class func backgroundColor() -> UIColor {
        return UIColor(red: 237.0/255, green: 237.0/255, blue: 237.0/255, alpha: 1.0)
    }
    
    class func backgroundAddtocartColor() -> UIColor {
        return UIColor(red: 235.0/255, green: 161.0/255, blue: 52.0/255, alpha: 1.0)
    }
    
    class func gradientColorFor(gradientStyle: CGGradient, color1:UIColor, color2:UIColor, frame:CGRect) -> UIColor{
        return .white
        // return GradientColor(gradientStyle, frame, [color1, color2])
    }
    
    class func primaryGreenColor() -> UIColor {
        return UIColor(red: 5.0/255, green: 175.0/255, blue: 105.0/255, alpha: 1.0)
    }
    
    class func imageBackGround() -> UIColor {
        return UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
    }
    
    class func imageGradientBackGround() -> UIColor {
        return UIColor(red: 222.0/255, green: 222.0/255, blue: 222.0/255, alpha: 1.0)
    }
    
    class func backgroundQtyPriceColor() -> UIColor {
        return UIColor(red: 241.0/255, green: 241.0/255, blue: 241.0/255, alpha: 1.0)
    }
    
    class func productDescriptorColor() -> UIColor {
        return UIColor(red: 129.0/255, green: 129.0/255, blue: 129.0/255, alpha: 1.0)
    }
    
    class func darkRed() -> UIColor {
        return UIColor(red: 142.0/255, green: 4.0/255, blue: 4.0/255, alpha: 1.0)
    }
    
    class func noticeSelectedColor() -> UIColor {
        return UIColor(red: 254.0/255, green: 235.0/255, blue: 239.0/255, alpha: 1.0)
    }
    
    class func lightGreenPromoColor() -> UIColor {
        return UIColor(red: 33.0/255, green: 160.0/255, blue: 3.0/255, alpha: 1.0)
    }
    
    class func profilePictureBorderColor() -> UIColor{
       return UIColor(red: 242.0/255, green: 197.0/255, blue: 63.0/255, alpha: 1)
    }
    
    class func dimWhiteColor() -> UIColor{
         return UIColor(red: 244.0/255, green: 244.0/255, blue: 244.0/255, alpha: 1.0)
    }
    
  
}

extension UIFont{
    
    class func LightMasterFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Roboto-Light", size: size)!
    }
    
    class func RegularMasterFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Roboto-Regular", size: size)!
    }
    
    class func BoldMasterFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Roboto-Bold", size: size)!
    }
    
    class func SymbolFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"redeem", size: size)!
    }
    
    class func LightItalicMasterFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Roboto-LightItalic", size: size)!
    }
    
    // Averta
    class func LightAvertaFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Averta-Light", size: size)!
    }
    
    class func RegularAvertaFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Averta-Regular", size: size)!
    }
    class func HelveticaNeueMediumFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"HelveticaNeue-Medium", size: size)!
    }
    
    class func HelveticaWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Helvetica", size: size)!
    }
    
    
    class func BoldAvertaFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Averta-Bold", size: size)!
    }
    
    class func LightItalicAvertaFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Averta-LightItalic", size: size)!
    }
    
    class func SemiboldAvertaFontWithSize(size:CGFloat) -> UIFont{
        return UIFont(name:"Averta-Semibold", size: size)!
    }
    
    class func headerFont() -> UIFont{
      return  UIFont(name: "Lato-Regular", size: 16)!
    }
    
}
