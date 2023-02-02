//
//  UserModel.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/11/22.
//

import Foundation
import CloudKit

struct UserModel: Identifiable {
    var id: CKRecord.ID?
    var userId: String
    var firstName: String
    var lastName: String
    var email: String
    
    init(id: CKRecord.ID, userId: String, firstName: String, lastName: String, email: String) {
        self.id = id
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    init(userId: String, firstName: String, lastName: String, email: String) {
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

extension UserModel {
    func toUserCredential() -> UserCredential {
        return UserCredential(userId: self.userId, email: self.email, firstName: self.firstName, lastName: self.lastName)
    }
}
