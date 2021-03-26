//
//  ViewController.swift
//  demoSqlite
//
//  Created by Jorge Pinedo on 6/15/19.
//  Copyright © 2019 Jorge Pinedo. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController {

    @IBOutlet weak var fistname: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    
    var db: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileUrl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask,appropriateFor: nil,create: false ).appendingPathComponent("Hero.sqllite")
        
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK{
            print("Error opening database")
            return
        }
        
        print("ok")
        
    }

    @IBAction func btnSave(_ sender: Any) {
    }
    

}

