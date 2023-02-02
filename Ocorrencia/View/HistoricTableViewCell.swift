//
//  HistoricTableViewCell.swift
//  Ocorrencia
//
//  Created by Gabriel Carvalho on 24/10/22.
//

import UIKit

class HistoricTableViewCell: UITableViewCell {
    
    
    static let identifier = "CustomTableViewCell"

    
    lazy var testLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "teste"
        lb.textColor = .black
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(testLabel)
        setupCts()
        
    }
    
    func setupCts(){
        
        NSLayoutConstraint.activate([
            
            testLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            testLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        
        ])
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }

}
