//
//  ConversationsController.swift
//  TwitterTutorial
//
//  Created by 中原護 on 2023/08/14.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properites
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
        let titleLabel = UILabel()
        titleLabel.text = "Message"
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 17)
        navigationItem.titleView = titleLabel
        //navigationItem.titleView = "Messages"
    }
}
