//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        button.setTitle("Go to logo", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.center = self.view.center
        view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    @objc private func didTapButton() {
        
        let rootVC = SecondViewController()
        
        let navVC = UINavigationController(rootViewController: rootVC)
        
        navVC.modalPresentationStyle = .fullScreen
       
        present(navVC, animated: true)
    }


}



class SecondViewController:UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        title = "Welcome"
        
        setLogo()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Go Back",
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(goBack))
    }
    
    @objc private func goBack() {
        dismiss(animated: true)
    }
    
    private func setLogo(){
        let logoImage = UIImage(named: "EY.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.frame.size.width = 200
        myImageView.frame.size.height = 200
        myImageView.center = self.view.center
        myImageView.image = logoImage
        view.addSubview(myImageView)
    }
}

