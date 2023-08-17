//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Seyma on 8.08.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        // Create pressed tab bar Note: Why UINavCont? Because user clicked button than push view controller in section
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Ana Sayfa"
        vc2.title = "Yakında"
        vc3.title = "Favori Aramalar"
        vc4.title = "Listem"
        
        tabBar.tintColor = .label // if use dark or normal mode label text color is change
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
    }


}

