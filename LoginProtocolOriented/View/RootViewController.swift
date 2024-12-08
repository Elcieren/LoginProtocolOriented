//
//  ViewController.swift
//  LoginProtocolOriented
//
//  Created by Eren Elçi on 6.12.2024.
//

import UIKit

class RootViewController: UIViewController , RootViewModelOutput {
    
    private let viewModel: RootViewModel
    
    init(viewModel: RootViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel.output = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        viewModel.checkLogin()
    }
    
    
    
    func showMainApp(){
        let mainVC = MainViewController()
        navigationController?.present(mainVC, animated: true)
    }
    
    func showLogin(){
        let loginVC = LoginViewController()
        navigationController?.present(loginVC, animated: true)
    }
    
}





