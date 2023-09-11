let firstName: String = "Steve"
var lastName: String? = "Jobs"
var haveResult: String

enum CustomError: Error {
    case missingLastName
}

do {
    guard let lastName = lastName else {
        haveResult = "Wozniak"
        print("\(firstName) \(haveResult)")
        throw CustomError.missingLastName
    }

    haveResult = lastName
    print("\(firstName) \(lastName)")
    print(haveResult)
} catch {
    print("Erro: \(error)")
}
