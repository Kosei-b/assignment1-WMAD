//
//  TopViewControllView.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-29.
//

import UIKit


class TopControllView: UIView {

    let profileImage = profileImageView(frame: .zero, width: 60)
    let userNameLabel = userName()
    let prefarenceButton = prefarenceButtonView(frame: .zero, width: 60, imageName: "gearshape")
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupLayout()
            
    }
            
    //MARK: Set Up Layout

    private func setupLayout(){
        let baseStackView = UIStackView(arrangedSubviews: [profileImage, userNameLabel, prefarenceButton])
        baseStackView.axis = .horizontal
        
        baseStackView.spacing = 10
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(baseStackView)
        
        baseStackView.anchor(top: topAnchor,bottom: bottomAnchor,left: leftAnchor,right: rightAnchor,leftPadding: 5,rightPadding: 5)
        profileImage.anchor(width: 60)
        prefarenceButton.anchor(width: 60)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


//MARK: Profile Image

class profileImageView: UIView {
    
    var image : UIImageView?
   init(frame: CGRect, width: CGFloat) {
        super.init(frame: frame)
       
        
       image = UIImageView()
       image?.contentMode = .scaleAspectFill
       image?.image = UIImage(named: "pro")
       image?.backgroundColor = .white
       image?.translatesAutoresizingMaskIntoConstraints = false
       image?.layer.cornerRadius = width / 2
       image?.layer.masksToBounds = true
       
       image?.layer.shadowOffset = .init(width: 1.5, height: 2)
       image?.layer.shadowColor = UIColor.black.cgColor
       image?.layer.shadowOpacity = 0.3
       image?.layer.shadowRadius = 15
        
        addSubview(image!)
        
        [image?.centerYAnchor.constraint(equalTo: centerYAnchor),
        image?.centerXAnchor.constraint(equalTo: centerXAnchor),
        image?.widthAnchor.constraint(equalToConstant: width),
        image?.heightAnchor.constraint(equalToConstant: width)].forEach { $0?.isActive = true }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

//MARK: User Name

class userName : UILabel {
    
    var label : UILabel?
    
   override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel()
        label?.text = "KOSEI BAN"
        label?.textColor = .black
        label?.textAlignment = .left
        label?.font = UIFont(name: "HiraKakuProN-W6", size: 20)
        label?.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label!)
        
        
        [
         label?.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
            .forEach { $0?.isActive = true }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


//MARK: PrefarenceButton

class prefarenceButtonView: UIView {
    
    var button: prefarenceButton?
    
    init(frame: CGRect, width: CGFloat, imageName: String) {
        super.init(frame: frame)
        
        button = prefarenceButton(type: .custom)
        button?.setImage(UIImage(systemName: imageName)?.resize(size: .init(width: width * 0.4, height: width * 0.4)), for: .normal)
        
        button?.contentVerticalAlignment = .fill
        button?.contentHorizontalAlignment = .fill
        button?.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        button?.translatesAutoresizingMaskIntoConstraints = false
        button?.backgroundColor = .white
        button?.layer.cornerRadius = width / 3
        
        button?.layer.shadowOffset = .init(width: 1.5, height: 2)
        button?.layer.shadowColor = UIColor.black.cgColor
        button?.layer.shadowOpacity = 0.3
        button?.layer.shadowRadius = 15
        
        addSubview(button!)
        
        [button?.centerYAnchor.constraint(equalTo: centerYAnchor),
        button?.centerXAnchor.constraint(equalTo: centerXAnchor),
        button?.widthAnchor.constraint(equalToConstant: width),
        button?.heightAnchor.constraint(equalToConstant: width)].forEach { $0?.isActive = true }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class prefarenceButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: []) {
                    
                    self.transform = .init(scaleX: 0.8, y: 0.8)
                    self.layoutIfNeeded()
                }
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: []) {
                    
                    self.transform = .identity
                    self.layoutIfNeeded()
                }
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
