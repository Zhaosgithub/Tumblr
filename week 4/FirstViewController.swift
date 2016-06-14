//
//  FirstViewController.swift
//  week 4
//
//  Created by Zhaochang He on 6/7/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var blackViewController: UIViewController!
    var blueViewController: UIViewController!
    var purpleViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
//    var viewControllers: [UIViewController]!
//    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //set up blackview child
        blackViewController = storyboard.instantiateViewControllerWithIdentifier("blackViewController")
        
        //set up blueview child
        blueViewController = storyboard.instantiateViewControllerWithIdentifier("blueViewController")
        
        //set up purpleview child
        purpleViewController = storyboard.instantiateViewControllerWithIdentifier("purpleViewController")
        
        //set up accountview child
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewController")
        
        //set up accountview child
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewController")
        
//        viewControllers = [blackViewController, blueViewController, accountViewController, trendingViewController]

        
        //show the bottom menu
        blackViewController.view.frame = contentView.frame
        
        //call the blackview child to show up
        contentView.addSubview(blackViewController.view)
        
        //who is your daddy? not sure what does it do too
        blackViewController.didMoveToParentViewController(self)
        
        
       //who is your daddy? not sure how does it do
        addChildViewController(blackViewController)
        
        // Do any additional setup after loading the view.
        
        
//        buttons[selectedIndex].selected = true
//        didPressTab(buttons[selectedIndex])
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func didTapfirst(sender: AnyObject) {
        
        blackViewController.view.frame = contentView.frame
        contentView.addSubview(blackViewController.view)
        
    }
    
    @IBAction func didTapTwo(sender: AnyObject) {
        
        blueViewController.view.frame = contentView.frame
        contentView.addSubview(blueViewController.view)
    }
    
    
    @IBAction func didTapThree(sender: AnyObject) {
        
        purpleViewController.view.frame = contentView.frame
        contentView.addSubview(purpleViewController.view)
    }
    
    
    @IBAction func didTapFour(sender: AnyObject) {
        
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
    }
    
    
    @IBAction func didTapFive(sender: AnyObject) {
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
        
    }
    
    
    
//    @IBAction func didPressTab(sender: AnyObject) {
//        
//        let previousIndex = selectedIndex
//        
//        selectedIndex = sender.tag
//        
//        buttons[previousIndex].selected = false
//        
//        let previousVC = viewControllers[previousIndex]
//        
//        previousVC.willMoveToParentViewController(nil)
//        previousVC.view.removeFromSuperview()
//        previousVC.removeFromParentViewController()
//        
//        sender.selected = true
//        
//        let vc = viewControllers[selectedIndex]
//        
//        addChildViewController(vc)
//        
//        vc.view.frame = contentView.bounds
//        contentView.addSubview(vc.view)
//        
//        vc.didMoveToParentViewController(self)
//        
//        
//        
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
