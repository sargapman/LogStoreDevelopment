//
//  Date+Ext.swift
//  
//
//  Created by Monty Boyer on 12/24/21.
//  Derived from Simon Ng @ AppCoda
//

import Foundation

extension Date {
   
   // get a time of day string from a Date.  formatted as "HH:MM AM/PM"
   static func todFromDate(date: Date) -> String {
      // conversion for the date time to a string
      let dateFormatter: DateFormatter = {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .none
         dateFormatter.timeStyle = .short
         dateFormatter.locale = Locale(identifier: "en_us")  // "en_us" : "mm/dd/yy", hh:mm AM/PM", "en_UK" : "dd/mm/yyyy, HH:mm"
         return dateFormatter
      }()
      
      // create a log entry using current date & time and add it to the log
      let todString = "\(dateFormatter.string(from: date))"
      
      return(todString)
   }
   
   // get a date & time string from a Date, adjusted for timezone!  result is formatted as "MMM dd at HH:mm AM/PM TZZ"
   static func adjustedDateAndTimeStringFromDate(date: Date, returnGMT: Bool) -> String {
      var adjustedDate = date

      if returnGMT {
         // get the timezone from the date
         let dateComponents = Calendar.current.dateComponents([.timeZone], from: date)
         
         // get the time difference from GMT
         let secondsfromGMT = (dateComponents.timeZone!.secondsFromGMT())  // as Int
         // print("\(String(describing: secondsfromGMT))")

         // adjust the date for the timezone
         adjustedDate = Calendar.current.date(byAdding: .second, value: secondsfromGMT, to: date)!
      }
      
      let adjustedDateComponents = Calendar.current.dateComponents([.day, .month, .timeZone], from: adjustedDate)

      var resultStr = " at " + todFromDate(date: adjustedDate)
      
      resultStr = resultStr + " " + (adjustedDateComponents.timeZone?.abbreviation())!
      
      let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
                          "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
      let monthName = months[adjustedDateComponents.month!-1]

      resultStr = "\(monthName) \(adjustedDateComponents.day!)" + resultStr
      return(resultStr)
   }
   
}
