//
//  CheckViewModel.swift
//  Yearbook
//
//  Created by Thomas Niezyniecki on 2/6/24.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift
import FirebaseDatabaseInternal



class CheckViewModel: ObservableObject {
    
    @Published var idNumbers: [String]  = []
    
    init() {
        PullFromFirebase()
        print(idNumbers)
        print("Hello")
    }
    
    func PullFromFirebase(){
//        let databaseRef = Database.database().reference().child("1hC3j_RPiYrvseXdg5RaFWgFkCpS8nqMl2uGkChfcY2c").child("yearbook_fees")
//        databaseRef.getData { myError, myDataSnapshot in
//            var newList: [String] = []
//            for idNumber in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
//                let number = idNumber.key
//                let dictionary = idNumber.value as! [Int:Any]
//                newList.append(number)
//            }
//            self.idNumbers = newList
//        }
    }
}
