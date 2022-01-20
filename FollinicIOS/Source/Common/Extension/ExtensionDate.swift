//
//  ExtensionDate.swift
//  MusicQ
//
//  Created by 한지웅-PC on 2020/12/28.
//  Copyright © 2020 한지웅. All rights reserved.
//

import Foundation

extension Date {
    public var year:Int {
        return Calendar.current.component(.year, from: self)
    }
    
    public var month:Int {
        return Calendar.current.component(.month, from: self)
    }
    
    public var day:Int {
        return Calendar.current.component(.day, from: self)
    }
    
    func isEqual(to date:Date, toGranularity component: Calendar.Component, in calendar:Calendar = .current) -> Bool {
        calendar.isDate(self, equalTo: date, toGranularity: component)
    }
    
    func isInSameYear(as date: Date) -> Bool { isEqual(to: date, toGranularity: .year) }
    func isInSameMonth(as date: Date) -> Bool { isEqual(to: date, toGranularity: .month)}
    func isInSameWeek(as date: Date) -> Bool { isEqual(to: date, toGranularity: .weekOfYear)}
    
    func inInSameDay(as date: Date) -> Bool { Calendar.current.isDate(self, inSameDayAs: date)}
    
    var isInThisYear: Bool { isInSameYear(as: Date()) }
    var isInThisMonth : Bool { isInSameMonth(as: Date()) }
    var isInThisWeek : Bool { isInSameWeek(as: Date()) }
    
    var isInYesterday : Bool { Calendar.current.isDateInYesterday(self) }
    var isInToday : Bool { Calendar.current.isDateInToday(self) }
    var isInTomorrow : Bool { Calendar.current.isDateInTomorrow(self)}
    
    var isInTheFuture: Bool { self > Date() }
    var isInThePast: Bool { self < Date() }
    
    func adding(minutes:Int) -> Date {
        return Calendar.current.date(byAdding: .minute, value: minutes, to: self)!
    }
    
    
}
