//
//  CardView.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-30.
//

import UIKit

class CardView : UIView {
    
    private let cardView = Card(BackgroundColor: .white)
    private let profileImage = CardImageView(imgName: "com")
    private let ocupetionLabel = CardInfoLabel(labelText: "IOS Developper" , labelFont: .systemFont(ofSize: 20, weight: .bold), labelTextColor: .black)
    private let locationLabel = CardInfoLabel(labelText: "Vancouver" , labelFont: .systemFont(ofSize: 20, weight: .bold), labelTextColor: .black)
    private let nameLabel = CardInfoLabel(labelText: "Ben / VanDev.Co", labelFont: .systemFont(ofSize: 30, weight: .bold), labelTextColor: .black)
    
    let mainText : UITextView = {
        
        let text = UITextView()
        text.textColor = .black
        text.backgroundColor = .white
        text.font = .systemFont(ofSize: 15, weight: .medium)
        text.text = "APPLICATION DEVELOPERRoles & Responsibilities:\n)Analyze information and evaluate results to choose the best solution to effectively solve problems.Apply knowledge gained in computer science courses to real world problems.Develop applications in Java.Understand the requirement and design test cases with test coverage.Build proficiency with test engineering tools.Perform test design, construct test scenarios.Participate in project meetings when required.Record, report, and track defects to accurately depict the status of the system.Complete all test documentation.Apply principles and techniques to evaluate systems during the development lifecycle.Apply strategies and approaches to identify risks with implementation, assess their likelihood, and initiate strategies to test for those risks.Test all code developed as per the defined quality process standards.Work closely with experienced developers, UX designers, and business and systems analysts as part of a larger development team.Ensure developed code is in accordance with time, quality and cost standards.Provide support in specialized technology areas such as requirements/specifications definition, analysis, assessment, planning, design, development, integration, testing, installation, performance tuning, deployment and/or maintenance.Design, develop, test, deploy, maintain and improve software.Technologies: Java OR Javascript OR, Python OR, .Net"
        
        return text
    }()
    
    private let favoriteButton = CardButton(imgName: "star")
    private let commentButton = CardButton(imgName: "bubble.left")
    private let dateLabel = CardInfoLabel(labelText: "2021/12/29 13:00", labelFont: .systemFont(ofSize: 10, weight: .bold), labelTextColor: .black)
   
    
    init() {
        super.init(frame: .zero)
        
        setupLayout()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panCardView))
        self.addGestureRecognizer(panGesture)
        
    }
    
    @objc private func panCardView(gesture : UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self)
        
        self.handlePanChange(translation: translation)
        
        if gesture.state == .changed {
            
        } else if gesture.state == .ended{
            
            self.handlePanEnded()
           
        }
    }
    
    
    private func handlePanChange(translation: CGPoint) {
        let degree: CGFloat = translation.x / 20
        let angle = degree * .pi / 100
        
        let lotateTranslation = CGAffineTransform(rotationAngle: angle)
        self.transform = lotateTranslation.translatedBy(x: translation.x, y: translation.y)
        
        let ratio: CGFloat = 1 / 100
        let ratioValue = ratio * translation.x
        
        if translation.x > 0 {
        
        }else if translation.x < 0 {
            
            
        }
    }
    
    private func handlePanEnded() {
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: []) {
                self.transform = .identity
                self.layoutIfNeeded()
            
            
        }
    }
    
 //MARK: Set Up Layout ()
   
    private func setupLayout() {
        
        let infoLabelVerticalStackView = UIStackView(arrangedSubviews: [ocupetionLabel,locationLabel])
        infoLabelVerticalStackView.axis = .vertical
  
        let topHorizontalStackView = UIStackView(arrangedSubviews: [profileImage,infoLabelVerticalStackView])
        topHorizontalStackView.axis = .horizontal
       
        let bottomHorizontalStackView = UIStackView(arrangedSubviews: [dateLabel,commentButton,favoriteButton])
        bottomHorizontalStackView.axis = .horizontal
     
        addSubview(cardView)
        addSubview(topHorizontalStackView)
        addSubview(nameLabel)
        addSubview(mainText)
        addSubview(bottomHorizontalStackView)
        
    
        cardView.anchor(top: topAnchor,bottom: bottomAnchor,left: leftAnchor,right: rightAnchor,leftPadding: 10,rightPadding: 10)
        // top
        topHorizontalStackView.anchor(top: cardView.topAnchor,left: cardView.leftAnchor,right: cardView.rightAnchor,height: 150,topPadding: 10)
        profileImage.anchor(top: topHorizontalStackView.topAnchor,bottom: topHorizontalStackView.bottomAnchor,left: topHorizontalStackView.leftAnchor,width: 150,topPadding: 10,leftPadding: 20)
        infoLabelVerticalStackView.anchor(top: topHorizontalStackView.topAnchor,bottom: topHorizontalStackView.bottomAnchor,left: profileImage.rightAnchor,right: topHorizontalStackView.rightAnchor,topPadding: 50,leftPadding: 20)
        locationLabel.anchor(top: ocupetionLabel.bottomAnchor,topPadding: 10)
        //name
        nameLabel.anchor(top: topHorizontalStackView.bottomAnchor,left: cardView.leftAnchor,right: cardView.rightAnchor,height: 30,topPadding: 10,leftPadding: 20,rightPadding: 20)
        //main text
        mainText.anchor(top: nameLabel.bottomAnchor,bottom: bottomHorizontalStackView.topAnchor, left: cardView.leftAnchor,right: cardView.rightAnchor, topPadding: 10,bottomPadding: 10,leftPadding: 20,rightPadding: 20)
        // bottom
        bottomHorizontalStackView.anchor(bottom: cardView.bottomAnchor,left: cardView.leftAnchor,right: cardView.rightAnchor,height: 30 ,bottomPadding: 10,leftPadding: 30,rightPadding: 30)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
