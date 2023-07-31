//
//  ViewController.swift
//  Sample
//
//  Created by Jeremy Buchman on 7/31/23.
//

import UIKit

/**
 # Instructions
 1. Find and fix any bugs that prevent the app from building or running.
 2. Load JSON File from Assets.xcassets named `books`
 3. Display each `title` and `subtitle` in a cell of the tableview.
 4. When a row is tapped, the `link` should be opened in a web browser.
 5. Add an image above the tableview populated from https://picsum.photos/200/300
 
 # Extra Bonus Points (Optional)
 6. The image should be rounded, like a circle
 7. The image should be constrained to be a square with equal length sides.
 */

class ViewController: AlertableViewController {
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
    }
}
