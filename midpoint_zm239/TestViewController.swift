//
//  TestViewController.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 28..
//  Copyright © 2018. Zozo. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subTitleLabel: UILabel!
    
    var eventNameTextFieldHeader: UILabel!
    var eventNameTextField: UITextField!
    
    var eventDescriptionTextViewHeader: UILabel!
    var eventDescriptionTextView: UITextView!
    
    var eventDateTextFieldHeader: UILabel!
    var eventDateTextField: UITextField!
    
    var eventLocationTextFieldHeader: UILabel!
    var locationButton1: UIButton!
    var locationButton2: UIButton!
    var locationButton3: UIButton!
    
    var createButton: UIButton!
    var dismissButton: UIButton!
    
    var locationFromButton: String!
    var dateForBackend = ""
    
    //picking the date
    var picker = UIDatePicker()
    var dateInToolBar: Date!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate
        
        view.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 7/255, alpha: 1.0)
        
        titleLabel = UILabel()
        titleLabel.text = "Create New Event"
        titleLabel.textColor = UIColor(red: 254/255, green: 253/255, blue: 254/255, alpha: 1.0)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        subTitleLabel = UILabel()
        subTitleLabel.text = "Beginning the Baking Process"
        subTitleLabel.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        subTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subTitleLabel)
        
        eventNameTextFieldHeader = UILabel()
        eventNameTextFieldHeader.text = "Dessert Name:"
        eventNameTextFieldHeader.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        eventNameTextFieldHeader.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(eventNameTextFieldHeader)
        eventNameTextFieldHeader.translatesAutoresizingMaskIntoConstraints = false
        
        eventNameTextField = UITextField()
        eventNameTextField.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        eventNameTextField.insetsLayoutMarginsFromSafeArea = true
        eventNameTextField.textAlignment = .center
        eventNameTextField.textColor = .lightGray
        eventNameTextField.layer.cornerRadius = 22.5
        eventNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eventNameTextField)
        
        eventDescriptionTextViewHeader = UILabel()
        eventDescriptionTextViewHeader.text = "Description:"
        eventDescriptionTextViewHeader.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        eventDescriptionTextViewHeader.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(eventDescriptionTextViewHeader)
        eventDescriptionTextViewHeader.translatesAutoresizingMaskIntoConstraints = false
        
        eventDescriptionTextView = UITextView()
        eventDescriptionTextView.text = "What's the event is about?"
        eventDescriptionTextView.font = UIFont.systemFont(ofSize: 18)
        eventDescriptionTextView.isEditable = true
        eventDescriptionTextView.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        eventDescriptionTextView.textColor = .lightGray
        eventDescriptionTextView.makeCorner(withRadius: 22.5)
        eventDescriptionTextView.textAlignment = .center
        eventDescriptionTextView.textContainer.lineFragmentPadding = 20
        eventDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eventDescriptionTextView)
        
        eventDateTextFieldHeader = UILabel()
        eventDateTextFieldHeader.text = "Date:"
        eventDateTextFieldHeader.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        eventDateTextFieldHeader.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(eventDateTextFieldHeader)
        eventDateTextFieldHeader.translatesAutoresizingMaskIntoConstraints = false
 
        eventDateTextField = UITextField()
        eventDateTextField.font = UIFont.systemFont(ofSize: 18)
        eventDateTextField.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        eventDateTextField.layer.cornerRadius = 22.5
        eventDateTextField.textAlignment = .center
        eventDateTextField.textColor = .lightGray
        eventDateTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eventDateTextField)
        
        eventLocationTextFieldHeader = UILabel()
        eventLocationTextFieldHeader.text = "Location:"
        eventLocationTextFieldHeader.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        eventLocationTextFieldHeader.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(eventLocationTextFieldHeader)
        eventLocationTextFieldHeader.translatesAutoresizingMaskIntoConstraints = false
        
        locationButton1 = UIButton()
        locationButton1.setTitle("W. Campus", for: .normal)
        locationButton1.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton1.addTarget(self, action: #selector(locationButton1Pressed), for: .touchUpInside)
        locationButton1.layer.cornerRadius = 22.5
        locationButton1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        locationButton1.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationButton1)
        
        locationButton2 = UIButton()
        locationButton2.setTitle("N. Campus", for: .normal)
        locationButton2.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton2.addTarget(self, action: #selector(locationButton2Pressed), for: .touchUpInside)
        locationButton2.layer.cornerRadius = 22.5
        locationButton2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        locationButton2.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationButton2)
        
        locationButton3 = UIButton()
        locationButton3.setTitle("C. Town", for: .normal)
        locationButton3.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton3.addTarget(self, action: #selector(locationButton3Pressed), for: .touchUpInside)
        locationButton3.layer.cornerRadius = 22.5
        locationButton3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        locationButton3.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationButton3)
        
        createButton = UIButton()
        createButton.setTitle("Let's Bake", for: .normal)
        createButton.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        createButton.addTarget(self, action: #selector(createButtonPressed), for: .touchUpInside)
        createButton.layer.cornerRadius = 22.5
        createButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        createButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(createButton)
        
        dismissButton = UIButton()
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        dismissButton.addTarget(self, action: #selector(dismissButtonPressed), for: .touchUpInside)
        dismissButton.layer.cornerRadius = 22.5
        dismissButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        dismissButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dismissButton)
        
        setupConstraints()
        
        //date picker
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        eventDateTextField.inputAccessoryView = toolbar
        eventDateTextField.inputView = picker
    }
    
    //date picker
    @objc func donePressed() {
        //format date
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        let dateString = formatter.string(from: picker.date)
        
        eventDateTextField.text = "\(dateString)"
        self.view.endEditing(true)
        
        dateInToolBar = picker.date
        
        //---------------------
        //Preparing date for backend - need to be in special format (Jun 1 2005 1:33PM)
        let yearFormatter = DateFormatter()
        yearFormatter.dateStyle = .medium
        yearFormatter.timeStyle = .none
        var yearString = yearFormatter.string(from: picker.date)
        yearString = yearString.replacingOccurrences(of: ",", with: "", options: NSString.CompareOptions.literal, range: nil)
        
        let hourFormatter = DateFormatter()
        hourFormatter.dateStyle = .none
        hourFormatter.timeStyle = .short
        var hourString = hourFormatter.string(from: picker.date)
        hourString = hourString.replacingOccurrences(of: " ", with: "", options: NSString.CompareOptions.literal, range: nil)
        
        dateForBackend = yearString + " " + hourString
        //---------------------
    }
    
    @objc func dismissButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func locationButton1Pressed() {
        locationFromButton = locationButton1.title(for: .normal)
        locationButton1.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        locationButton1.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        
        locationButton2.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton2.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton3.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton3.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
    }
    
    @objc func locationButton2Pressed() {
        locationFromButton = locationButton2.title(for: .normal)
        locationButton2.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        locationButton2.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        
        locationButton1.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton1.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton3.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton3.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
    }
    
    @objc func locationButton3Pressed() {
        locationFromButton = locationButton3.title(for: .normal)
        locationButton3.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        locationButton3.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        
        locationButton1.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton1.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton2.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton2.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
    }
    
    @objc func createButtonPressed() {
        if let name = eventNameTextField.text, let about = eventDescriptionTextView.text, let location = locationFromButton, name != "", about != "", location != "", dateForBackend != "", eventDateTextField.text != "" {
            NetworkManager.createEvent(passName: name, passTime: dateForBackend, passLocation: location, passDescription: about)
            dismiss(animated: true, completion: nil)
        } else {
            print("Error message!")
            let alert = UIAlertController(title: "Error", message: "All fields have to be completed to create an event.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Got it.", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func setupConstraints() {
        
        //titleLabel
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32)
            ])
        
        //subTitleLabel
        NSLayoutConstraint.activate([
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)
            ])
        
        //eventNameTextFieldHeader
        NSLayoutConstraint.activate([
            eventNameTextFieldHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eventNameTextFieldHeader.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 50)
            ])
        
        //eventNameTextField
        NSLayoutConstraint.activate([
            eventNameTextField.topAnchor.constraint(equalTo: eventNameTextFieldHeader.bottomAnchor, constant: 20),
            eventNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            eventNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            eventNameTextField.heightAnchor.constraint(equalToConstant: 38)
            ])
        
        //eventDescriptionTextViewHeader
        NSLayoutConstraint.activate([
            eventDescriptionTextViewHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eventDescriptionTextViewHeader.topAnchor.constraint(equalTo: eventNameTextField.bottomAnchor, constant: 11)
            ])
        
        //eventDescriptionTextView
        NSLayoutConstraint.activate([
            eventDescriptionTextView.topAnchor.constraint(equalTo: eventDescriptionTextViewHeader.bottomAnchor, constant: 20),
            eventDescriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            eventDescriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            eventDescriptionTextView.heightAnchor.constraint(equalToConstant: 83)
            ])
        
        //eventDateTextFieldHeader
        NSLayoutConstraint.activate([
            eventDateTextFieldHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eventDateTextFieldHeader.topAnchor.constraint(equalTo: eventDescriptionTextView.bottomAnchor, constant: 16)
            ])
        
        //eventDateTextField
        NSLayoutConstraint.activate([
            eventDateTextField.topAnchor.constraint(equalTo: eventDateTextFieldHeader.bottomAnchor, constant: 20),
            eventDateTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            eventDateTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            eventDateTextField.heightAnchor.constraint(equalToConstant: 38)
            ])
        
        //eventLocationTextFieldHeader
        NSLayoutConstraint.activate([
            eventLocationTextFieldHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eventLocationTextFieldHeader.topAnchor.constraint(equalTo: eventDateTextField.bottomAnchor, constant: 18)
            ])
        
        //locationButton1
        NSLayoutConstraint.activate([
            locationButton1.trailingAnchor.constraint(equalTo: locationButton2.leadingAnchor, constant: -24),
            locationButton1.topAnchor.constraint(equalTo:
                locationButton2.topAnchor),
            locationButton1.heightAnchor.constraint(equalToConstant: 38),
            locationButton1.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        //locationButton2
        NSLayoutConstraint.activate([
            locationButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            locationButton2.topAnchor.constraint(equalTo:
                eventLocationTextFieldHeader.bottomAnchor, constant: 10),
            locationButton2.heightAnchor.constraint(equalToConstant: 38),
            locationButton2.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        //locationButton3
        NSLayoutConstraint.activate([
            locationButton3.leadingAnchor.constraint(equalTo: locationButton2.trailingAnchor, constant: 24),
            locationButton3.topAnchor.constraint(equalTo:
                locationButton2.topAnchor),
            locationButton3.heightAnchor.constraint(equalToConstant: 38),
            locationButton3.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        //createButton
        NSLayoutConstraint.activate([
            createButton.topAnchor.constraint(equalTo:
                locationButton2.bottomAnchor, constant: 31),
            createButton.centerXAnchor.constraint(equalTo:
                view.centerXAnchor),
            createButton.heightAnchor.constraint(equalToConstant: 38),
            createButton.widthAnchor.constraint(equalToConstant: 200)
            ])

        //dismissButton
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.topAnchor.constraint(equalTo:
                createButton.bottomAnchor, constant: 20),
            dismissButton.heightAnchor.constraint(equalToConstant: 38),
            dismissButton.widthAnchor.constraint(equalToConstant: 200)
            ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//To easily create rounded corners for 'eventDescriptionTextView':
//eventDescriptionTextView.makeCorner(withRadius: 22.5) - line 90
extension UIView {
    func makeCorner(withRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        self.layer.isOpaque = false
    }
}
