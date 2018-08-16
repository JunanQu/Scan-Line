

import UIKit

class draw: UIView {
    
    var theValue = 30.0
    
    @objc func graph(x: Double){
        let a = x
        let b = CGFloat(a)
        let c = bounds.height / b
        let e = 3*Double(c)
        var i = 0.0
        while i <= 6 {
            let line = UIBezierPath()
            let linelayer = CAShapeLayer()
            let f = CGFloat(i * e)
         
            if i.truncatingRemainder(dividingBy: 2.0) == 0{
            line.move(to: .init(x: 0, y: (bounds.height / 2 + f)))
            line.addLine(to: .init(x: bounds.width, y: (bounds.height / 2 + f)))
            }
            else if i.truncatingRemainder(dividingBy: 2.0) != 0{
                line.move(to: .init(x: 0, y: (bounds.height / 2 - f)))
                line.addLine(to: .init(x: bounds.width, y: (bounds.height / 2 - f)))
            }else{
                line.move(to: .init(x: 0, y: (f)))
                line.addLine(to: .init(x: bounds.width, y: (f)))
            }
            linelayer.path = line.cgPath
            UIColor.black.setStroke()
            line.lineWidth = 5
            line.stroke()
            self.layer.addSublayer(linelayer)
            i=i+1
        }
    }
    
    @objc func run(){
        theValue += 0.2
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.run), userInfo: nil, repeats: true)
        
        graph(x: theValue)
        guard let sublayers = self.layer.sublayers else{print("the x 1221"); return}
        for layer in sublayers {
            layer.removeFromSuperlayer()
        }
        setNeedsDisplay()
        
    }
    
    override func draw(_ rect: CGRect) {
        //        drawLine()
//        graph(x: 60)
        run()
    }
    
    
    
}
