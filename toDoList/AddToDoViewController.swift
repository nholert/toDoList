//
//  AddToDoViewController.swift
//  toDoList
//
//  Created by Scholar on 7/29/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = toDoTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // random comment 
    @IBAction func addTapped(_ sender: Any) {let toDo = ToDo()
        
        if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = mySwitch.isOn
        }
          previousVC.toDos.append(toDo)
          previousVC.tableView.reloadData()
          navigationController?.popViewController(animated: true)
      }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
