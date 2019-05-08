//
//  QuestionViewController.swift
//  Headline
//
//  Created by Rinaldi-Tierno, Veronica A on 5/1/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit
import FirebaseDatabase

class QuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var ref:DatabaseReference?
    var databaseHandle:DatabaseHandle?

    
    //var postData = ["Message 1", "Message 2", "Message 3"]
     var postData = [String]()
    var postKey = [String]()
    
    
    //text view
    @IBOutlet weak var textView: UITextView!
    
    //button
    @IBAction func addPost(_ sender: UIButton) {
            //adds the message, resigns keyboard, removes the text in textView
            ref?.child("QandA").childByAutoId().setValue(textView.text)
            textView.resignFirstResponder()
            textView.text = ""
        }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        cell?.textLabel?.text = postData[indexPath.row]
        return cell!
    }
    
    
func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
    if editingStyle == .delete {
        tableView.beginUpdates()
        //delete row from TableView
        tableView.deleteRows(at: [indexPath], with: .automatic)
        //get the key for the selected row
        let theKey = postKey[indexPath.row]
        //remove the key and value from the array
        postData.remove(at: indexPath.row)
        postKey.remove(at: indexPath.row)
        
        //remove value from Firebase
        ref?.child("QandA").child("\(theKey)").removeValue()
        tableView.endUpdates()
    }
}

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        textView.becomeFirstResponder()
        ref=Database.database().reference()
        //retrieve posts and listen for changes
        ref?.child("QandA").observe(.childAdded, with: { (snapshot) in
            //code to execute when a child is added
            //take the value from snapshot, add to postData array
            let post = snapshot.value as? String
            self.postData.append(post!)
            let key = snapshot.key
            self.postKey.append(key)
            self.tableView.reloadData()
            
        })
    }

   

}
