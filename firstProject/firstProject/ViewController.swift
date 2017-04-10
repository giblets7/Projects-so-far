//
//  ViewController.swift
//  firstProject
//
//  Created by Graeme Robertson on 31/03/2017.
//  Copyright © 2017 Graeme Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    
    @IBOutlet weak var TableView: UITableView!
    
    var array = ["test", "test1", "test2", "test3", "test4", "test5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "action")!
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let saveAction = UITableViewRowAction(style: .default, title: "save") { (action, index) in
            print("saved action pressed")
    }
        
        saveAction.backgroundColor = #colorLiteral(red: 0.07843137255, green: 0.5450980392, blue: 0.6784313725, alpha: 1)
    
        let deleteAction = UITableViewRowAction(style: .destructive, title: "delete") { (action, index)
            in self.array.remove(at: indexPath.row)
            self.TableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        return[deleteAction, saveAction]
}

}
















