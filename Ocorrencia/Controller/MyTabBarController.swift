//
//  ViewController.swift
//  Ocorrencia
//
//  Created by Gabriel Carvalho on 20/10/22.
//

import UIKit


class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        
    }
    
    private func setupTabBarController() {
     
        self.setViewControllers([tela01(),tela02(),tela03()], animated: false)
        self.tabBar.backgroundColor = UIColor(named: "Color")
        self.tabBar.unselectedItemTintColor = .black
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else { return }
        items[0].title = "Extras"
        items[0].image = UIImage(systemName: "bitcoinsign.circle.fill")
        
        
        items[1].title = "Ocorrências"
        items[1].image = UIImage(systemName: "pencil")

        
        items[2].title = "Histórico"
        items[2].image = UIImage(systemName: "rectangle.and.paperclip")
        
    }
    
}

class tela01: UIViewController {
    var screen: ExtraScreen?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen = ExtraScreen()
        self.view = self.screen
        
    }
}


class tela02: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "tela02"
        
    }
}


class tela03: UIViewController {

    var screen: ExtrasHistoricView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen = ExtrasHistoricView()
        self.view = self.screen

    }
}


