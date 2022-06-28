//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

import UIKit

struct Response:Codable {
    let ip:String?
}


class ViewController: UIViewController {

    let url = URL(string: "http://ip.jsontest.com/")
    
    private var response:String = ""
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "I'm a test label"
        self.view.addSubview(label)
        
        async {
            let ip = await fetchResponse()
            self.response = ip
            
            
            DispatchQueue.main.async {
                self.label.text = self.response
                
            }
        }
    }
    
    private func fetchResponse() async -> String {
        guard url != nil else {
            return ""
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url!)
            let resp = try JSONDecoder().decode(Response.self, from: data)
            self.response = resp.ip ?? ""
            print("\(String(describing: resp.ip))")
            return self.response
        }catch {
            return ""
        }
    }

}
