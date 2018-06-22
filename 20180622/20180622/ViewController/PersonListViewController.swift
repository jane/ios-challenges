//
//  PersonListViewController.swift
//  20180622
//
//  Created by Nic Laughter on 6/22/18.
//  Copyright © 2018 Jane. All rights reserved.
//

import UIKit

class PersonListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Outlets
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Public/Internal Properties
    
    let people = [
        Person(score: 2060, imageName: "person1"),
        Person(score: 14829, imageName: "person1"),
        Person(score: 507, imageName: "person1"),
        Person(score: 564125, imageName: "person1"),
        Person(score: 1598165, imageName: "person1"),
        Person(score: 15354, imageName: "person1")
    ]
    
    // MARK: - Private Properties
    
    
    // MARK: - Private Functions
    
    
    // MARK: - Lifecycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "LeftToRightIconBackgroundView", bundle: nil), forCellReuseIdentifier: "personCell")
    }
    
    // MARK: - Super Class Overrides
    
    // MARK: - UITableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
            as? LeftToRightIconTableViewCell else { return UITableViewCell() }
        
        return cell
    }
}
