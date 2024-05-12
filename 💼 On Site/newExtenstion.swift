import Foundation

extension Date {
    
    var day: Int {
        let calendar = Calendar.current
        return calendar.component(.day, from: self)
    }
    
    var nameOfDay: String {
        let calendar = Calendar.current
        switch calendar.component(.day, from: self) {
        case 2:
            return "Monday"
        case 3:
            return "Tuesday"
        case 4:
            return "Wednesday"
        case 5:
            return "Thursday"
        case 6:
            return "Friday"
        case 7:
            return "Saturday"
        default:
            return "Sunday"
        }
    }
    
    var month: Int {
        let calendar = Calendar.current
        return calendar.component(.month, from: self)
    }
    
    var nameOfTheMonth: String {
        let calendar = Calendar.current
        switch calendar.component(.month, from: self) {
        case 1:
            return "January"
        case 2:
            return "February"
        case 3:
            return "March"
        case 4:
            return "April"
        case 5:
            return "May"
        case 6:
            return "June"
        case 7:
            return "July"
        case 8:
            return "August"
        case 9:
            return "September"
        case 10:
            return "October"
        case 11:
            return "November"
        default:
            return "December"
        }
    }
    
    var year: Int {
        let calendar = Calendar.current
        return calendar.component(.year, from: self)
    }
    
    
    static func numberOfDaysBetween(date1: Date, date2: Date) -> Int {
        return abs(date1.day - date2.day)
    }
    
}

let date = Date()
print(date.day)
print(date.nameOfDay)
print(date.month)
print(date.nameOfTheMonth)
print(date.year)
print(Date.numberOfDaysBetween(date1: date, date2: Date(timeIntervalSinceNow: 691_200)))

extension String {
    func toDate() -> Date? {
        let stringFormat = DateFormatter()
        
        stringFormat.locale = Locale(identifier: "en_US_POSIX")
        
        if self.contains("/") {
            stringFormat.dateFormat = "EEEE dd/MMMM/yyyy"
        } else if self.contains(":") {
            stringFormat.dateFormat = "dd MMM yyyy HH:mm:ss VV"
            let timeZone = self.components(separatedBy: .whitespaces).last
            stringFormat.timeZone = TimeZone(abbreviation: timeZone ?? "GMT")
        }

        
        let result = stringFormat.date(from: self)
        
        return result
    }
}
    
print("Friday 04/September/2020".toDate())
print("12 Dec 2021 22:13:44 CST".toDate())