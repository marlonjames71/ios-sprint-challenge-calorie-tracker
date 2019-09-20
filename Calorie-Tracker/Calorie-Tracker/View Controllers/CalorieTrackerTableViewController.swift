//
//  CalorieTrackerTableViewController.swift
//  Calorie-Tracker
//
//  Created by Marlon Raskin on 9/20/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit
import SwiftChart

class CalorieTrackerTableViewController: UITableViewController {

	var addedCalorieEntries: [CalorieEntry] = []

	@IBOutlet weak var chartView: UIView!
	override func viewDidLoad() {
        super.viewDidLoad()

    }

	@IBAction func addCaloriesButtonTapped(_ sender: UIBarButtonItem) {
		let alertAddCalories = UIAlertController(title: "Add Calorie Intake",
												 message: "Enter the amount of calories in the field below",
												 preferredStyle: .alert)
		alertAddCalories.addTextField { (calorieTextField) in
			calorieTextField.placeholder = "Calorie Amount"
			calorieTextField.keyboardType = .numberPad
		}

		let saveAction = UIAlertAction(title: "Add", style: .default) { (_) in

		}

		let canceAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
		[saveAction, canceAction].forEach { alertAddCalories.addAction($0)}
		present(alertAddCalories, animated: true, completion: nil)

	}

	private func sortedCalories() -> [CalorieEntry] {
		let sortedCalories = addedCalorieEntries.sorted { $0.dateAdded > $1.dateAdded }
		return sortedCalories
	}

	// MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
