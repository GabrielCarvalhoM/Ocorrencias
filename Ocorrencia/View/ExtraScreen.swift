//
//  ExtraScreen.swift
//  Ocorrencia
//
//  Created by Gabriel Carvalho on 20/10/22.
//

import UIKit

class ExtraScreen: UIView  {
    
    
    var arrayPicker = ["Gabriel","Pedro","Anderson","Gustavo","João","Jonas"]
    var arrayPicker2 = ["Camila","Amélia","Augusto","Tomas","Caio","Marta"]
    var arrayPicker3 = ["Marcelo","João","Gonzaga","Natan","Carvalho","Jeremias"]
    var arrayPicker4 = ["Italo","Nonato","Pascal","Fernando","Filipe","Matheus"]
    
    
    let segitems = ["Vendas","Frota","Almoxarifado","Financeiro"]
    
    lazy var segmentedControl: UISegmentedControl = {
        
        let seg = UISegmentedControl(items: segitems)
        seg.selectedSegmentIndex = 0
        seg.selectedSegmentTintColor = UIColor(named: "Color")
        seg.addTarget(self, action: #selector(trade(_:)), for: .valueChanged)
        seg.translatesAutoresizingMaskIntoConstraints = false
        
        return seg
    }()
    
    @objc private func trade(_ sender: UISegmentedControl) {
        
        self.namePicker.reloadAllComponents()

    }

    lazy var namePicker: UIPickerView = {
        let picker = UIPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        
        picker.delegate = self as UIPickerViewDelegate
        picker.dataSource = self as UIPickerViewDataSource
        
        
        return picker
    }()
    
    
    lazy var initialDatePicker: UIDatePicker = {
       
        let datePc = UIDatePicker()
        datePc.translatesAutoresizingMaskIntoConstraints = false
        
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm "
        return datePc
    }()
    
    lazy var finalDatePicker: UIDatePicker = {
       
        let datePc = UIDatePicker()
        datePc.translatesAutoresizingMaskIntoConstraints = false
        
        datePc.datePickerMode = .time
        datePc.locale = .current
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        
        return datePc
    }()
   
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.text = "Selecione seu nome"
        
        
        
        return label
        
    }()
    
    lazy var departmentNameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.text = "Selecione seu setor"
        
        
        
        return label
        
    }()
    
    lazy var initialDataAndTime: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.text = "Selecione a data e hora inicial:"
        
        
        
        return label
        
    }()
    
    lazy var finalDataAndTime: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.text = "  Hora de encerramento da extra:"
        
        
        
        return label
        
    }()
    
    lazy var saveButton: UIButton = {
        
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("  Registrar extra!!  ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 1
        button.addTarget(self, action: #selector(pressEnterButton), for: .touchUpInside)
        
        button.backgroundColor = UIColor(named: "Color")
        
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(nameLabel)
        self.addSubview(departmentNameLabel)
        self.addSubview(namePicker)
        self.addSubview(initialDatePicker)
        self.addSubview(initialDataAndTime)
        self.addSubview(finalDataAndTime)
        self.addSubview(finalDatePicker)
        self.addSubview(segmentedControl)
        self.addSubview(saveButton)
        
        self.backgroundColor = .white
        cts()
    }
    
    func printName(component: Int = 0)-> String{
        let selectedIndex = namePicker.selectedRow(inComponent: component)
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return arrayPicker[selectedIndex]
        case 1:
            return arrayPicker2[selectedIndex]
        case 2:
            return arrayPicker3[selectedIndex]
        case 3:
            return arrayPicker4[selectedIndex]
        default:
            return arrayPicker[selectedIndex]
        }
        
    }
    
    
    func printTime() {
        let index = initialDatePicker.date
        let index2: Date =
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pressEnterButton() {
        
       printTime()
         
    }

    
    private func cts() {
        
        NSLayoutConstraint.activate([
            
            self.namePicker.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.namePicker.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 4),
            
            self.nameLabel.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 24),
            self.nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.departmentNameLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.departmentNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.segmentedControl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.segmentedControl.topAnchor.constraint(equalTo: self.departmentNameLabel.bottomAnchor, constant: 20),
            
            self.initialDatePicker.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.initialDatePicker.topAnchor.constraint(equalTo: self.initialDataAndTime.bottomAnchor, constant: 20),
            
            self.initialDataAndTime.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.initialDataAndTime.topAnchor.constraint(equalTo: self.namePicker.bottomAnchor, constant: 4),
            
            self.finalDataAndTime.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.finalDataAndTime.topAnchor.constraint(equalTo: self.initialDatePicker.bottomAnchor, constant: 20),
            
            self.finalDatePicker.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.finalDatePicker.topAnchor.constraint(equalTo: self.finalDataAndTime.bottomAnchor, constant: 20),
            
            self.saveButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.saveButton.topAnchor.constraint(equalTo: self.finalDatePicker.bottomAnchor, constant: 70)
            
            
        ])
        
        
        
    }
    
    
    
}







extension ExtraScreen: UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return arrayPicker.count
        case 1:
            return arrayPicker2.count

        case 2:
            return arrayPicker3.count

        case 3:
            return arrayPicker4.count

        default:
            return arrayPicker.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            let row = arrayPicker[row]
            return row
        case 1:
            let row = arrayPicker2[row]
            return row
        case 2:
            let row = arrayPicker3[row]
            return row
        case 3:
            let row = arrayPicker4[row]
            return row
        default:
            let row = arrayPicker[row]
            return row
        }
        
    }
    
    
}


