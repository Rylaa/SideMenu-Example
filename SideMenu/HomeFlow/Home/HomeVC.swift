//
//  HomeViewContreller.swift
//  Kimo
//
//  Created by yusuf demirkoparan on 8.02.2020.
//  Copyright © 2020 Arzu Pınarcıoğlu. All rights reserved.
//

import UIKit

final class HomeVC: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let mainVC = UIViewController()
      mainVC.view.backgroundColor = .red
      
      let rootController = MenuRooter(mainViewController: mainVC, topNavigationLeftImage: UIImage(named: "sideMenu"))
      let menuVC = SideMenuVC()
      menuVC.view.backgroundColor = .green
      
      let drawerVC = MenuContainer(rootViewController: rootController, menuController: menuVC)
      self.addChild(drawerVC)
      view.addSubview(drawerVC.view)
      drawerVC.didMove(toParent: self)
    }
}
