import Foundation

@frozen
public struct UnsupportedError {
    private let fileID: String
    
    private let filePath: String
    
    private let file: String
    
    private let function: String
    
    private let line: Int
    
    private let column: Int
    
    public let message: String?
    
    public init(
        fileID: String = #fileID,
        filePath: String = #filePath,
        file: String = #file,
        function: String = #function,
        line: Int = #line,
        column: Int = #column,
        message: String? = nil
    ) {
        self.fileID = fileID
        self.filePath = filePath
        self.file = file
        self.function = function
        self.line = line
        self.column = column
        self.message = message
    }
}

extension UnsupportedError: Error {}

extension UnsupportedError: Equatable {}

extension UnsupportedError: Hashable {}

extension UnsupportedError: Codable {}

extension UnsupportedError: CustomStringConvertible {
    public var description: String {
        if let message = self.message {
            return String.localizedStringWithFormat(
                NSLocalizedString("%@ [%d:%d] - %@ UnsupportedError - %@", bundle: .module, comment: ""),
                self.fileID,
                self.line,
                self.column,
                self.function,
                message
            )
        } else {
            return String.localizedStringWithFormat(
                NSLocalizedString("%@ [%d:%d] - %@ UnsupportedError", bundle: .module, comment: ""),
                self.fileID,
                self.line,
                self.column,
                self.function
            )
        }
    }
}
