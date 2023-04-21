//
//  ViewController.swift
//  ConstraintRelatedAll20April
//
//  Created by Mac on 20/04/23.
//

import UIKit

class ViewController: UIViewController {

    var studentS:[Student] = []
    @IBOutlet weak var tableView: UITableView!
    var objOfStruct: Student?
    override func viewDidLoad() {
        super.viewDidLoad()
        AppendData()
        tableView.reloadData()
        
    }

    func AppendData() {
        studentS.append(Student(firstName: objOfStruct?.firstName, lastName: objOfStruct?.lastName))
    }
    

}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.lblOne.text = studentS[indexPath.row].firstName as! String
        cell.lblTwo.text = studentS[indexPath.row].lastName as! String
        return cell
    }
    
    
}
