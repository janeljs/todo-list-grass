//
//  TodoTableViewController.swift
//  Todo_List
//
//  Created by 심영민 on 2021/04/06.
//

import UIKit

class TodoTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var columnNameLabel: UILabel!
    @IBOutlet weak var cardNumLabel: UILabel!
    
    private lazy var tableViewDelegate = TodoDelegate()
    private var todoDataSource = TodoDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setting()
    }
    
    private func setting() {
        tableView.dataSource = todoDataSource
        tableView.delegate = tableViewDelegate
        tableView.register(UINib(nibName: TodoCell.identifier, bundle: nil), forCellReuseIdentifier: TodoCell.identifier)
        
        cardNumLabel.text = "\(tableView.numberOfRows(inSection: 0))"
    }
}