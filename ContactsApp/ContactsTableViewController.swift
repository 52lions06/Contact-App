//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by William McKelvey on 9/20/17.
//  Copyright © 2017 William McKelvey. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts:[Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jenny = Contact(name: "Jenny", phoneNumber: "1-800-555-5566")
        let rich = Contact(name: "Rich")
        let mindy = Contact(phoneNumber: "888-888-8888")
        
        self.contacts.append(jenny)
        self.contacts.append(rich)
        self.contacts.append(mindy)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

         //Configure the cell...
        
        let contact = self.contacts[indexPath.row]
        
        if let name = contact.name {
            cell.textLabel?.text = name
        }
        else {
            cell.textLabel?.text = "No Name"

        }
        
        return cell
    }
 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)
        let contact = self.contacts[(indexPath?.row)!]
        let destination = segue.destination as! DetailViewController
        destination.contact = contact
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
