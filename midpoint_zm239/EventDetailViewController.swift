//
//  EventDetailViewController.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 27..
//  Copyright © 2018. Zozo. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    var nameLabel: UILabel!
    var nameLabelText: String!
    
    var locationButton: UIButton!
    var locationButtonText: String!
    
    var dateButton: UIButton!
    var dateButtonText: String!
    
    var descriptionTextView: UITextView!
    var descriptionTextViewText: String!
    
    var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 7/255, alpha: 1.0)
        
        nameLabel = UILabel()
        nameLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(nameLabel)
        
        locationButton = UIButton()
        locationButton.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        locationButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton.layer.cornerRadius = 22.5
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationButton)
        
        dateButton = UIButton()
        dateButton.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        dateButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        dateButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        dateButton.layer.cornerRadius = 22.5
        dateButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dateButton)
        
        descriptionTextView = UITextView()
        descriptionTextView.font = UIFont.systemFont(ofSize: 18)
        descriptionTextView.isEditable = false
        descriptionTextView.textContainer.lineFragmentPadding = 0
        descriptionTextView.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        descriptionTextView.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextView.textAlignment = .center
        descriptionTextView.layer.cornerRadius = 22.5
        view.addSubview(descriptionTextView)
        
        dismissButton = UIButton()
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        dismissButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        dismissButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        dismissButton.addTarget(self, action: #selector(dismissButtonPressed), for: .touchUpInside)
        dismissButton.layer.cornerRadius = 22.5
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dismissButton)
        
        setupConstraints()
        setUpTexts()
    }
    
    @objc func dismissButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    func setUpTexts() {
        nameLabel.text = nameLabelText
        dateButton.setTitle(dateButtonText, for: .normal)
        locationButton.setTitle(locationButtonText, for: .normal)
        descriptionTextView.text = descriptionTextViewText
    }
    
    func setupConstraints() {
        
        //nameLabel
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo:
                view.safeAreaLayoutGuide.topAnchor, constant: 32)
            ])
        
        //locationButton
        NSLayoutConstraint.activate([
            locationButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            locationButton.topAnchor.constraint(equalTo:
                nameLabel.bottomAnchor, constant: 44),
            locationButton.heightAnchor.constraint(equalToConstant: 38),
            locationButton.widthAnchor.constraint(equalToConstant: 147.5)
            ])
        
        //dateButton
        NSLayoutConstraint.activate([
            dateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dateButton.topAnchor.constraint(equalTo:
                locationButton.bottomAnchor, constant: 44),
            dateButton.leadingAnchor.constraint(equalTo:
                view.leadingAnchor, constant: 40),
            dateButton.trailingAnchor.constraint(equalTo:
                view.trailingAnchor, constant: -40),
            dateButton.heightAnchor.constraint(equalToConstant: 38)
            ])
        
        //descriptionTextView
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: dateButton.bottomAnchor, constant: 32),
            descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            descriptionTextView.heightAnchor.constraint(equalToConstant: 83)
            ])
        
        //dismissButton
        NSLayoutConstraint.activate([
            dismissButton.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 32),
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.heightAnchor.constraint(equalToConstant: 38),
            dismissButton.widthAnchor.constraint(equalToConstant: 147.5)
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
