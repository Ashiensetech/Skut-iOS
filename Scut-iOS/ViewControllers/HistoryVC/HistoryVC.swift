//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/18/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14


import UIKit

class HistoryVC: CommonVC {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action:
            #selector(handleRefresh(_:)),
                                 for: .valueChanged)
        refreshControl.tintColor = UIColor.red
        
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.refreshControl = self.refreshControl
        self.setUpNibFiles()
    }
    
    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        
        
        if !tableView.isDragging
        {
            refresh()
        }
        
    }
    
    func refresh() {
        self.refreshControl.endRefreshing()
        self.tableView.reloadData()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if refreshControl.isRefreshing == true
        {
            refresh()
        }
    }

}


extension HistoryVC {
    func setUpNibFiles() {
        let nib1 = UINib(nibName: "TableSectionHeader", bundle: nil)
        tableView.register(nib1, forHeaderFooterViewReuseIdentifier: "TableSectionHeader")
        let nib2 = UINib(nibName: "HistoryCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "historyCell")
    }
}

extension HistoryVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Dequeue with the reuse identifier
        let cell = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableSectionHeader")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
}
