//
//  NewsListTableViewController.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import UIKit
import SnapKit

class NewsListTableViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "GoodNews"
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=6f5c1f24201d4a6681ef1da3e41810e9")!
        
        WebSerivce.getArticles(url: url) { _ in
        }
    }
}

