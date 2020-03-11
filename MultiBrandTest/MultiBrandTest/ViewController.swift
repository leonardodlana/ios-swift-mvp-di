//
//  ViewController.swift
//  MultiBrandTest
//
//  Created by Genesis on 5/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit
import UserModule

class ViewController: UIViewController, UserContractView {
    
    let presenter : UserContractPresenter
    
    @IBOutlet weak var label: UILabel!
    
    required init?(coder: NSCoder) {
        presenter = DependencyInjection.instance.getInstanceOf(UserContractPresenter.self)!
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter.attachView(view: self)
    }
    
    func showUser(user: String) {
        self.label.text = "user -> \(user)"
    }
    
    func showLoading(loading: Bool) {
        self.label.text = "loading -> \(loading)"
    }
    
    func showError(error: Bool) {
        
    }

    deinit {
        presenter.detachView()
    }
    

}

