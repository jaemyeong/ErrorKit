import Foundation

@frozen
public struct NilError {
    private let fileID: String
    
    private let filePath: String
    
    private let file: String
    
    private let function: String
    
    private let line: Int
    
    private let column: Int
    
    public init(
        fileID: String = #fileID,
        filePath: String = #filePath,
        file: String = #file,
        function: String = #function,
        line: Int = #line,
        column: Int = #column
    ) {
        self.fileID = fileID
        self.filePath = filePath
        self.file = file
        self.function = function
        self.line = line
        self.column = column
    }
}

extension NilError: Error {}

extension NilError: Hashable {}

extension NilError: Codable {}

extension NilError: CustomStringConvertible {
    public var description: String {
        String.localizedStringWithFormat(
            NSLocalizedString("%@ [%d:%d] - %@ NilError", comment: ""),
            self.fileID,
            self.line,
            self.column,
            self.function
        )
    }
}
