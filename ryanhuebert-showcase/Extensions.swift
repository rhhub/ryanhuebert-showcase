////
////  Blank.swift
////  ShapeSurfer
////
////  Created by Ryan Huebert on 3/24/15.
////  Copyright (c) 2015 Ryan Huebert. All rights reserved.
////
//
import UIKit

// Custom Dynamic Font NOTES
// Create array of font size boldSizes = [ ]


//
//
////Vector Math
///*
//func + (left: CGVector, right: CGVector) -> CGVector {
//    return CGVector(dx: left.dx + right.dx, dy: left.dy + right.dy)
//}
//
//func - (left: CGVector, right: CGVector) -> CGVector {
//    return CGVector(dx: left.dx - right.dx, dy: left.dy - right.dy)
//}
//
//func * (point: CGVector, scalar: CGFloat) -> CGVector {
//    return CGVector(dx: point.dx * scalar, dy: point.dy * scalar)
//}
//
//func / (point: CGVector, scalar: CGFloat) -> CGVector {
//    return CGVector(dx: point.dx / scalar, dy: point.dy / scalar)
//}
//*/
//
//#if !(arch(x86_64) || arch(arm64))
//    func sqrt(a: CGFloat) -> CGFloat {
//    return CGFloat(sqrtf(Float(a)))
//    }
//#endif
//
//extension CGPoint {
//    func returnRandomPointWithOffset(minRadius minRadius: Int, maxRadius: Int) -> CGPoint {
//        let angle = randomInRange(0, hi: 360)
//        let offset = randomInRange(minRadius, hi: maxRadius)
//        let vector = CGVector(angle: CGFloat(angle), magnitude: CGFloat(offset))
//        return CGPoint(p1: self, vector: vector)
//    }
//    
//    init(p1: CGPoint, vector: CGVector) {
//        self.init(x: p1.x + vector.dx, y: p1.y + vector.dy)
//    }
//}
//
//extension CGVector {
//    func length() -> CGFloat {
//        return sqrt(dx*dx + dy*dy)
//    }
//    
//    func normalized() -> CGVector {
//        return CGVector(dx: dx / length(), dy: dy / length())
//    }
//    
//    func angle() -> CGFloat {
//    // between -pi and pi
//        return CGFloat(atan2(dy, dx))
//    }
//    
//    func dotWith(vector: CGVector) -> CGFloat {
//        return dx * vector.dx + dy * vector.dy
//    }
//    
//    func angleBetween(vector: CGVector) -> CGFloat {
//        var w = acos((self.dotWith(vector)) / (self.length() * vector.length()))
//        if w.isNaN {
//            w = 0 as CGFloat
//        }
//        return w
//    }
//    
//    func angleSignBetween(priorVector priorVector: CGVector) -> CGFloat {
//        return self.dx * priorVector.dy - self.dy * priorVector.dx
//        // If positive: self is to the right, if negative: self is to the left
//    }
//    
//    func scale(scale scale: CGFloat) -> CGVector {
//        return CGVector(dx: dx * scale, dy: dy * scale)
//    }
//    
//    func scaleXY(scaleX scaleX: CGFloat, scaleY: CGFloat) -> CGVector {
//        return CGVector(dx: dx * scaleX, dy: dy * scaleY)
//    }
//    
//    init(angle: CGFloat, magnitude: CGFloat) {
//        self.init(dx: sin(angle) * magnitude, dy: cos(angle) * magnitude)
//    }
//    
//    init(p1: CGPoint, p2: CGPoint) {
//        self.init(dx: p2.x - p1.x, dy: p2.y - p1.y)
//    }
//}
//
//extension CGRect {
//    func centerPosition() -> CGPoint {
//        return CGPoint(x: origin.x + width / 2 as CGFloat, y: origin.y + height / 2 as CGFloat)
//    }
//    
//    init (centerOrigin: CGPoint, size: CGSize) {
//        let origin = CGPoint(x: centerOrigin.x - size.width / 2 as CGFloat, y: centerOrigin.y - size.height / 2 as CGFloat)
//        
//        self.init(origin: origin, size: size)
//    }
//}
//
//extension CGSize {
//    var center: CGPoint { get { return CGPoint(x: self.width / 2, y: self.height / 2) } }
//}
//
////extension CGPathRef {
////    func splitPathIntoPoints() -> [CGPoint] {
////        //CONVERTING CGPATH TO POINTS USABLE FOR FRAMES
////        
////        var points = [CGPoint]()
////        
////        let resolution = [5] as [CGFloat] // Passed to following function, input of more values will cause patters in dashing
////        let myPathStroked = CGPathCreateCopyByDashingPath(self, nil, 0, resolution, 1)
////        
////        var count = 0
////        
////        ForEachElementOfCGPath(myPathStroked!) { (element) -> Void in
////            
////            let e = element.memory
////            
////            let elementType = e.type
////            let elementPoints = e.points.memory
////            
////            switch elementType {
////                
////            case CGPathElementType.MoveToPoint: //contains 1 point, type value: 0
////                points.append(elementPoints)
////                count++
////                
////            case CGPathElementType.AddLineToPoint: //contains 1 point, type value: 1
////                points.append(elementPoints)
////                count++
////                
////            case CGPathElementType.AddQuadCurveToPoint: //contains 2 points, type value: 2
////                count = count + 2
////                
////            case CGPathElementType.AddCurveToPoint: //contains 3 points, type value: 3
////                count = count + 3
////                
////            case CGPathElementType.CloseSubpath: //contains 0 points, type value: 4
////                ()
////            }
////        }
////
////        
////        return points
////    }
////}
//
//extension SKSpriteNode {
//    func setSize(width: CGFloat?, height: CGFloat?) {
//        let currentSize = size
//        
//        if width != nil && height != nil {
//            size = CGSize(width: width!, height: height!)
//        } else if width != nil {
//            size = CGSize(width: width!, height: currentSize.height * width! / currentSize.width)
//        } else if height != nil {
//            size = CGSize(width: currentSize.width * height! / currentSize.height, height: height!)
//        }
//    }
//}
//
//extension SKCropNode {
//    convenience init (sprite: SKSpriteNode, color: UIColor, scale: CGFloat = 0.95) {
//        self.init()
//        let content = SKSpriteNode(color: color, size: CGSize(width: sprite.size.width * 1.1, height: sprite.size.height * 1.1))
//        maskNode = sprite // This is the cookie cutter
//        addChild(content) // The children are the dough
//        setScale(scale) // Because crop node is sloppy...
//    }
//}
//
//func removeObject<Element: Equatable>(object: Element, inout fromArray array: [Element]) {
//    if let index = array.indexOf(object) {
//        array.removeAtIndex(index)
//    }
//}
//
//func removeAllObject<Element: Equatable>(object: Element, inout fromArray array: [Element]) {
//    var scan = true
//    while scan {
//        if let index = array.indexOf(object) {
//            array.removeAtIndex(index)
//        } else {
//            scan = false
//        }
//    }
//}
//
//extension Array {
//    func randomItem() -> Element {
//        let index = Int(arc4random_uniform(UInt32(self.count)))
//        return self[index]
//    }
//}
//
//extension Set {
//    func randomElement() -> Element {
//        let n = Int(arc4random_uniform(UInt32(count)))
//        let i = self[startIndex.advancedBy(n)]
//        return i
//    }
//}
//
//
extension UIColor {
    
    convenience init(r: Int, g: Int, b: Int, alpha: CGFloat) {
        assert(r >= 0 && r <= 255, "Invalid red component")
        assert(g >= 0 && g <= 255, "Invalid green component")
        assert(b >= 0 && b <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    
    convenience init(netHex: Int, alpha: CGFloat = 1.0) {
        print(netHex)
        print(alpha)
        self.init(r: (netHex >> 16) & 0xff, g:(netHex >> 8) & 0xff, b: netHex & 0xff, alpha: alpha)
   }
//    
//    convenience init(red: Int, green: Int, blue: Int) {
//        assert(red >= 0 && red <= 255, "Invalid red component")
//        assert(green >= 0 && green <= 255, "Invalid green component")
//        assert(blue >= 0 && blue <= 255, "Invalid blue component")
//        
//        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
//    }
//    
//    convenience init(netHex: Int) {
//        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
//    }
//
    
//
//    
//    
//    /* Tutorial
//    var color = UIColor(red: 0xFF, blue: 0xFF, green: 0xFF)
//    var color2 = UIColor(netHex:0xFFFFFF)
//    */
//    
//    convenience init(netHexString: String, alpha: CGFloat?) {
//        var cString:String = netHexString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
//        
//        if (cString.hasPrefix("#")) {
//            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
//            
//        }
//        
//        if (cString.hasPrefix("0X")) {
//            cString = cString.substringFromIndex(cString.startIndex.advancedBy(2))
//        }
//        
//        if cString.characters.count != 6 {
//            cString = "808080"
//            
//        }
//
//        var netHexInt:UInt32 = 0
//        NSScanner(string: cString).scanHexInt(&netHexInt)
//        
//        self.init(red:CGFloat((netHexInt & 0xFF0000) >> 16) / 255.0, green:CGFloat((netHexInt & 0x00FF00) >> 8) / 255.0, blue: CGFloat(netHexInt & 0x0000FF) / 255.0, alpha: alpha ?? 1.0)
//    }
//    
//    
}
//
//// Functions
//
//func randomInRange(lo: Int, hi: Int) -> Int {
//    return lo + Int(arc4random_uniform(UInt32(hi - lo + 1)))
//}
//
//func deltaAngleLessThanPi(lastTheta: CGFloat, currentTheta: CGFloat) -> CGFloat{
//    // This is an easy function to calculate the shortest angle < pi when given 2 angles that have a differance of more than pi
//    var a = currentTheta - lastTheta
//    let n = CGFloat(2 * M_PI)
//    if abs(a) > CGFloat(M_PI) {
//        a = (((a + CGFloat(M_PI)) % n + n) % n) - CGFloat(M_PI)
//    }
//    return a
//}
//
//
//
//
