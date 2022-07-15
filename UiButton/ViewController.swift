//
//  ViewController.swift
//  UiButton
//
//  Created by Дмитрий Процак on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        trueButton.layer.borderColor = UIColor.red.cgColor
        trueButton.layer.borderWidth = 1
        trueButton.layer.cornerRadius = 10
        
        ///создание нового button
        let actionButton = UIButton()
        view.addSubview(actionButton)
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.borderWidth = 1
        actionButton.layer.cornerRadius = 10
        
        
        ///констрейны не высчитываються относительного его маски
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        ///указываем констрейны
        NSLayoutConstraint.activate([
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16),
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -93),
            actionButton.widthAnchor.constraint(equalToConstant: 145),
            actionButton.heightAnchor.constraint(equalToConstant: 109)])
        
       // actionButton.frame = CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: <#T##Int#>) - аналог вышеупомянутого
        
        actionButton.setTitle("Действие", for: .normal)
        actionButton.setTitleColor(.red, for: .normal)
        actionButton.setTitleShadowColor(.orange, for: .highlighted)
      //  actionButton.showsTouchWhenHighlighted  = true //-подсветка кнопки при нажатии
        
        actionButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
        
    }

    
    
    @IBAction func trueAction(_ sender: Any) {
        titleLabel.text = Sourse.getInfo(type: .word)
        
    }
    
    @objc func letAction() {
        titleLabel.text = Sourse.getInfo(type: .action)
    }
}

