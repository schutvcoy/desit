import Foundation

/// A structure representing a financial transaction.
struct Transaction {
    var amount: Double
    var date: Date
    var description: String
}

extension Transaction {
    
    /// Returns a formatted string describing the transaction.
    ///
    /// This method formats the transaction details including the description, amount, and date into a single string.
    ///
    /// - Returns: A string containing the amount, date, and description of the transaction.
    func formattedDescription() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        
        return "\(description): $\(amount) on \(formatter.string(from: date))"
    }
}

// Example usage:
let transaction = Transaction(amount: 123.45, date: Date(), description: "Grocery Shopping")
print(transaction.formattedDescription())
