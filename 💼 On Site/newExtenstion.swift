import Foundation

/*
extension Date {
  var day: Int 
  var nameOfDay: String
  var month: Int
  var nameOfTheMonth: String
  var year: Int

  func numberOfDaysBetween(date1: Int, date2: Int) -> Int {
    
  }
}
*/

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