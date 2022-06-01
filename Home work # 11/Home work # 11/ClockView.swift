

import UIKit

@IBDesignable class ClockView: UIView {

   var isSetUped = false
    
    var markerSize: CGFloat = 3
    var markerLenght: CGFloat = 12
    var markerColor = UIColor.black
    
    @IBInspectable var hourLineSize: CGFloat = 6{
        didSet { layoutIfNeeded() }
    }
    var hourLineOffset: CGFloat = 20
    @IBInspectable var hourLineColor: UIColor = UIColor.green{
        didSet { hourLine.backgroundColor = hourLineColor }
    }
    @IBInspectable var minuteLineSize: CGFloat = 6{
        didSet { layoutIfNeeded() }
    }
    var minuteLineOffset: CGFloat = 27
    @IBInspectable var minuteLineColor: UIColor = UIColor.yellow{
        didSet { minuteLine.backgroundColor = minuteLineColor }
    }
    @IBInspectable var secondLineSize: CGFloat = 4{
        didSet { layoutIfNeeded() }
    }
    var secondLineOffset: CGFloat = 32
    @IBInspectable var secondLineColor: UIColor = UIColor.purple{
        didSet { secondLine.backgroundColor = secondLineColor }
    }
    var roundedViewColor = UIColor.red
    
    var hours: CGFloat = 7{
        didSet { updateHours() }
    }
    var minutes: CGFloat = 7{
        didSet { updateMinutes() }
    }
    var seconds: CGFloat = 7{
        didSet { updateSeconds() }
    }
    
    private let topMarker = UIView()
    private let rightMarker = UIView()
    private let leftMarker = UIView()
    private let bottomMarker = UIView()
    
    private let hourLine = UIView()
    private let minuteLine = UIView()
    private let secondLine = UIView()
    private let roundedView = UIView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        secondLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        
        let w = frame.size.width
        let h = frame.size.height
        
        hourLine.frame = CGRect(x: w / 2 - hourLineSize / 2, y: hourLineOffset, width: hourLineSize, height: h / 2 - hourLineOffset)
        hourLine.backgroundColor = hourLineColor
        
        minuteLine.frame = CGRect(x: w / 2 - minuteLineSize, y: minuteLineOffset, width: minuteLineSize, height: h / 2 - minuteLineOffset)
        minuteLine.backgroundColor = minuteLineColor
        
        secondLine.frame = CGRect(x: w / 2 - secondLineSize, y: secondLineOffset, width: secondLineSize, height: h / 2 - secondLineOffset)
        secondLine.backgroundColor = secondLineColor
        
        roundedView.frame = CGRect(x: w / 2 - 8, y: h / 2 - 8, width: 16, height: 16)
        roundedView.backgroundColor = roundedViewColor
        roundedView.layer.cornerRadius = 8
        
        updateHours()
        updateMinutes()
        updateSeconds()
        
        topMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: 0, width: markerSize, height: markerLenght)
        leftMarker.frame = CGRect(x: 0, y: h / 2 - markerSize / 2, width: markerLenght, height: markerSize)
        rightMarker.frame = CGRect(x: w - markerLenght, y: h / 2 - markerSize, width: markerLenght, height: markerSize)
        bottomMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: h - markerLenght, width: markerSize, height: markerLenght)
        
        for v in [topMarker, rightMarker, leftMarker, bottomMarker]{
            v.backgroundColor = markerColor
        }
        
        layer.cornerRadius = frame.size.width / 2
        
        if isSetUped { return }
        
        isSetUped = true
        
        for v in [topMarker, rightMarker, leftMarker, bottomMarker, hourLine, roundedView, minuteLine, secondLine]{
            addSubview(v)
        }
        
    }
    func updateHours(){
        let angle = CGFloat.pi * 2 * (hours / CGFloat(12))
        hourLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    func updateMinutes(){
        let m = CGFloat.pi * 2 * (hours / CGFloat(60))
        minuteLine.transform = CGAffineTransform(rotationAngle: m)
    }
    func updateSeconds(){
        let s = CGFloat.pi * 2 * (hours / CGFloat(60))
        secondLine.transform = CGAffineTransform(rotationAngle: s)
    }
}
