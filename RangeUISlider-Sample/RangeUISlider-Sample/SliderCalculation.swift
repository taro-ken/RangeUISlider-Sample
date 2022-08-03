//
//  SliderCalculation.swift
//  RangeUISlider-Sample
//
//  Created by 木元健太郎 on 2022/08/03.
//

import UIKit

final class SliderCalculation {
     // CGFloatで渡ってきた値を時間に変換して返す
    static func transformTimeString(value: CGFloat) -> String {
        let hour = floor(value / 4)
        let minute = value.truncatingRemainder(dividingBy: 4) * 15
        // 0埋めする
        var formatHour = String(format: "%02.0f", hour)
        var formatMinute = String(format: "%02.0f", minute)

        return "\(formatHour):\(formatMinute)"
    }
}
