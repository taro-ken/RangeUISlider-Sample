//
//  IntToTimeFormatter.swift
//  RangeUISlider-Sample
//
//  Created by 木元健太郎 on 2022/06/30.
//

import Foundation

final class IntToTimeFormatter {

static func toTime(value: Int) -> String {
    if 1...5 ~= value {
        return "00:15"
    }
    if 6...10 ~= value {
        return "00:30"
    }
    if 11...15 ~= value {
        return "00:45"
    }
    if 16...20 ~= value {
        return "01:00"
    }
    
    
    
    
    return ""
}
    
}


