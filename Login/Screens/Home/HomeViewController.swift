//
//  HomeViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 01/10/24.
//

import UIKit

class HomeViewController: UIViewController {
    let viewModel: HomeViewModelProtocol
    var homeView: HomeView?

    init(viewModel: HomeViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        homeView = HomeView(viewController: self)
        self.view = self.homeView ?? UIView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView?.userNameLabel.text = viewModel.userName
    }
}
