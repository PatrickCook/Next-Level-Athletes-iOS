//
//  SearchExercisesVC.swift
//  Next Level Athletes App
//
//  Created by Patrick Cook on 2/26/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class SearchExercisesVC: UIViewController, UITableViewDataSource, UISearchBarDelegate {
    let searchData = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                    "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                    "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                    "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                    "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    var filteredData = [String]()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup the tableView and searchBar
        tableView.dataSource = self
        searchBar.delegate = self
        
        filteredData = searchData
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Selects a cell and then sets the lables before sending to tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchResultCell", for: indexPath) as! SearchResultCell
        cell.title?.text = filteredData[indexPath.row]
        
        return cell
    }
    //Returns the number of rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    //Method updates the filterData based on the text in the Search Box
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? searchData : searchData.filter { (item: String) -> Bool in
            //If dataItem matches the searchText, return true to include it
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
            
        }
        tableView.reloadData()
    }
    //Allows the cancel button to be shown when typing
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.searchBar.showsCancelButton = true
    }
    //Removes the keyboard when the cancel button is pressed
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        searchBar.text = ""
        searchBar.resignFirstResponder()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
