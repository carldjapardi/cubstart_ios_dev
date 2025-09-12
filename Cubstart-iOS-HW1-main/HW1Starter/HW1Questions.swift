//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        var ret: [String] = []
        for file in filenames {
            let file_cleaned = file.components(separatedBy: ".")[0]
            if (file_cleaned.count == count) {
                ret.append(file)
            }
        }
        return ret
    }
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        for path in directions {
            var currentIdx = startingIndex
            var valid = true

            for d in path {
                switch d {
                    case .left: currentIdx -= 1
                    case .right: currentIdx += 1
                    case .up, .down:
                        valid = false
                        break
                }
            }

            if valid && currentIdx == escapeIndex { return true }
        }
        return false
    }
}

