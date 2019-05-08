//
//  ViewController.swift
//  Headline
//
//  Created by Rinaldi-Tierno, Veronica A on 4/17/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    //test array of headlines
    //var newsItems = ["Marimba", "Drums", "Banjolele"]
    
    var ref:DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    var newsItems = [String]()
    
    @IBOutlet weak var theNews: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsItems.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        cell?.textLabel?.text = newsItems[indexPath.row]
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add to ViewDidLoad, name corresponds to name of TableView
        theNews.delegate = self
        theNews.dataSource = self
        ref=Database.database().reference()
        
        databaseHandle = ref?.child("Posts").observe(.childAdded, with: { (snapshot) in
            //code to execute when a child is added
            //take the value from snapshot, add to postData array and reload TableView
            let post = snapshot.value as? String
            self.newsItems.append(post!)
            self.theNews.reloadData()
        })        // Do any additional setup after loading the view, typically from a nib.
    }


}

