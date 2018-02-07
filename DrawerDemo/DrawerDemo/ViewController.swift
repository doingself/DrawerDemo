//
//  ViewController.swift
//  DrawerDemo
//
//  Created by 623971951 on 2018/2/7.
//  Copyright © 2018年 syc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "drawer"
        self.view.backgroundColor = UIColor.white
        
        let left = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target: self, action: #selector(self.leftItemAction(sender:)))
        let right = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(self.rightItemAction(sender:)))
        
        self.navigationItem.leftBarButtonItem = left
        self.navigationItem.rightBarButtonItem = right
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func leftItemAction(sender: Any?){
        RootViewController.shared?.openLeft()
    }
    @objc func rightItemAction(sender: Any?){
        let pop = LeftViewController()
        pop.preferredContentSize = CGSize(width: 150, height: 300)
        pop.modalPresentationStyle = .popover
        pop.popoverPresentationController?.barButtonItem = sender as? UIBarButtonItem
        pop.popoverPresentationController?.delegate = self
        self.present(pop, animated: true, completion: nil)
    }

}
extension ViewController: UIPopoverPresentationControllerDelegate{
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        return true
    }

}
