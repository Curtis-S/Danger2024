import Danger

let danger = Danger()
let modifiedFiles = danger.git.modifiedFiles
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")
//let swiftFiles = editedFiles.filter { $0.hasSuffix(".swift") }
//
//swiftFiles.forEach { swiftFile in
//    let content = danger.utils.readFile(swiftFile)
//    if content.contains("TODO:") {
//        warn("A TODO is left in \(swiftFile)")
//    }
//}
