//
//  RangeUISliderViewController.swift
//  RangeUISlider-Sample
//
//  Created by 木元健太郎 on 2022/06/30.
//

import UIKit
import RangeUISlider

final class RangeUISliderViewController: UIViewController {

    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var endTimeLabel: UILabel!
    
    @IBOutlet weak var rangeUISlider: RangeUISlider! {
        didSet {
            rangeUISlider.delegate = self
        }
    }
    

    override func viewDidLoad() {
        setUpView()
    }
}

// MARK: - SetUpRangeUISlider
extension RangeUISliderViewController: RangeUISliderDelegate {
    func rangeChangeFinished(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
    }

    func rangeIsChanging(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
        startTimeLabel.text = SliderCalculation.transformTimeString(value: minValueSelected)
        endTimeLabel.text = SliderCalculation.transformTimeString(value: maxValueSelected)
    }

    func setUpView() {
        rangeUISlider.leftKnobColor = .blue
        rangeUISlider.rightKnobColor = .blue
        rangeUISlider.rangeSelectedColor = .blue
        rangeUISlider.rangeNotSelectedColor = UIColor.gray
        rangeUISlider.leftKnobWidth = 20
        rangeUISlider.leftKnobHeight = 20
        rangeUISlider.leftKnobCorners = 10
        rangeUISlider.rightKnobWidth = 20
        rangeUISlider.rightKnobHeight = 20
        rangeUISlider.rightKnobCorners = 10
        rangeUISlider.barHeight = 5
        rangeUISlider.scaleMinValue = 0
        rangeUISlider.scaleMaxValue = 100
        rangeUISlider.defaultValueLeftKnob = 0
        rangeUISlider.defaultValueRightKnob = 100
        rangeUISlider.scaleMinValue = 0
        rangeUISlider.scaleMaxValue = 96
        rangeUISlider.stepIncrement = 1
    }
}

