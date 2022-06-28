//
//  ViewController.swift
//  CH1-Clousure
//
//  Created by Omar Buendia on 6/27/22.
//

import UIKit

struct Response:Codable {
    let ip:String?
}

class ViewController: UIViewController {

    private var response:String = ""
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configLabel()
        let url = "http://ip.jsontest.com/"
        getData(from: url)
        
    }
    private func configLabel(){
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "Wainting for response...."
        self.view.addSubview(label)
    }
    
    func getData(from url:String){
     
        let task = URLSession.shared.dataTask(with: URL(string: url)!) { data, response, error in
            
            guard let data = data, error == nil else {
                print("No data")
                return
            }
            
            var result:Response?
            
            do {
                
                result = try JSONDecoder().decode(Response.self, from:data)
            
            }catch {
                print("Failed to convert\(error.localizedDescription)")
            }
            
            guard let json =  result else {
                return
            }
            DispatchQueue.main.async {
                self.label.text = json.ip
                print(json.ip ?? "")
            }
            
            
        }
            task.resume()
        
    }

}









