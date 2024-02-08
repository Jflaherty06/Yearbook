//
//  CheckViewModel.swift
//  Yearbook
//
//  Created by Thomas Niezyniecki on 2/6/24.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class CheckViewModel: ObservableObject {
    @Published var idNumbers: [String]  = []
    init() {
        PullFromFirebase()
    }
    
    func PullFromFirebase(){
        let databaseRef = Database.database().reference().child("Sheet1")
        databaseRef.getData { myError, myDataSnapshot in
            var newList: [String] =  []
            for idNumber in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                let number = idNumber.key
                let dictionary = idNumber.value as! [String:Any]
                let currentIdNumber = number
                newList.append(currentIdNumber)
            }
            self.idNumbers = newList
        }
    }
}
