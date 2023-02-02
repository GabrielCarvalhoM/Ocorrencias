//
//  ExtrasHistorico.swift
//  Ocorrencia
//
//  Created by Gabriel Carvalho on 31/01/23.
//

import UIKit



class ExtrasHistoricView: UIView {
    
    
    lazy var tableView: UITableView = {
       let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.register(HistoricTableViewCell.self, forCellReuseIdentifier: HistoricTableViewCell.identifier)
        return tb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        addSubview(tableView)
        
        
        cts()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cts(){
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            
        ])
    }
}

extension ExtrasHistoricView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HistoricTableViewCell.identifier, for: indexPath) as? HistoricTableViewCell
        
        cell?.testLabel.text = "testando label"
        
        return cell!
    }
}
