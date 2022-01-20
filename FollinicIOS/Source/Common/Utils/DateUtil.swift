//
//  DateUtil.swift
//  MusicQ
//
//  Created by 한지웅-PC on 2021/05/07.
//  Copyright © 2021 한지웅. All rights reserved.
//

import Foundation

public class DateUtil {
    public class func date(year:Int, month:Int, day:Int, hour: Int = 0, minute: Int = 0, seconds: Int = 0) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.date(from: "\(year)-\(month)-\(day) \(hour):\(minute):\(seconds)")
    }
    
    public class func dateAfter(years:Int, from baseDate: Date) -> Date? {
        let yearsToAdd = years
        var dateComponents = DateComponents()
        dateComponents.year = yearsToAdd
        return Calendar.current.date(byAdding: dateComponents, to: baseDate)
    }
    
    public class func dayAfter(days:Int, from baseDate: Date) -> Date? {
        let daysToAdd = days
        var dateComponents = DateComponents()
        dateComponents.day = daysToAdd
        return Calendar.current.date(byAdding: dateComponents, to: baseDate)
    }
    
    public class func dayBefore(days:Int, from baseDate: Date) -> Date? {
        let daysToMinus = days
        var dateComponents = DateComponents()
        dateComponents.day = daysToMinus * -1
        return Calendar.current.date(byAdding: dateComponents, to: baseDate)
    }
    
    public class func StringToDate(format:String, dateStr:String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        
        return dateFormatter.date(from: dateStr)
    }
    
    public class func DateToString(format:String, date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        return dateFormatter.string(from: date)
    }
    
    public class func DateToUTCDate(targetDate:Date, format:String) -> Date {
        let dateFormatter:DateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let currentUTC:String = dateFormatter.string(from: targetDate)
        
        return dateFormatter.date(from: currentUTC)!
    }
    
    public class func CurrentUTCDate(format:String) -> Date {
        let dateFormatter:DateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let currentUTC:String = dateFormatter.string(from: Date())
            
        return dateFormatter.date(from:currentUTC)!
    }
}
