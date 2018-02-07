//
//  RootViewController.swift
//  DrawerDemo
//
//  Created by 623971951 on 2018/2/7.
//  Copyright © 2018年 syc. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    static let shared: RootViewController? = UIApplication.shared.keyWindow?.rootViewController as? RootViewController
    
    private let maxWidth: CGFloat = UIScreen.main.bounds.size.width / 4 * 3
    
    private var mainViewController: UIViewController!
    private var leftViewController: UIViewController!
    
    init(main: UIViewController, left: UIViewController) {
        
        super.init(nibName: nil, bundle: nil)
        
        self.mainViewController = main
        self.leftViewController = left
        
        self.view.addSubview(main.view)
        self.view.addSubview(left.view)
        
        self.addChildViewController(main)
        self.addChildViewController(left)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.leftViewController.view.transform = CGAffineTransform(translationX: -self.maxWidth, y: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openLeft(){
        
    }
}
