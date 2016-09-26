//
//  FirstViewController.swift
//  Swift-Effects
//
//  Created by liwei on 16/9/26.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    static let cellId = "FirstCellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - tableview
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: FirstViewController.cellId, for: indexPath as IndexPath)
        cell.textLabel?.text = "3D"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: PageEffectViewController.pageStoryboardId)
        self.navigationController?.pushViewController(controller!, animated: true)
    }

}

