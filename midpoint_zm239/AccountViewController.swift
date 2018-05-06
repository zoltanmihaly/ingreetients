//
//  AccountViewController.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 27..
//  Copyright © 2018. Zozo. All rights reserved.
//


import UIKit

class AccountViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var scrollView: UIScrollView!
    var contentView: UIView!
    
    var defaultProfileImg = UIImage(named: "profilepicture")
    var profileImgView: UIImageView!
    
    var nameLabel: UILabel!
    
    var majorButton: UIButton!
    var locationButton: UIButton!
    
    var bioTextViewLabel: UILabel!
    var bioTextView: UITextView!
    
    var photosLabel: UILabel!
    
    var defaultFoodImg = UIImage(named: "food")
    var foodImgV1: UIImageView!
    var foodImgV2: UIImageView!
    var foodImgV3: UIImageView!
    var foodImgV4: UIImageView!
    var foodImgV5: UIImageView!
    var foodImgV6: UIImageView!
    
    var editAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 7/255, alpha: 1.0)
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        profileImgView = UIImageView()
        profileImgView.image = defaultProfileImg
        profileImgView.layer.cornerRadius = 55
        profileImgView.clipsToBounds = true
        profileImgView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(profileImgView)
 
        nameLabel = UILabel()
        nameLabel.text = "Christine Yang"
        nameLabel.textColor = UIColor(red: 254/255, green: 253/255, blue: 254/255, alpha: 1.0)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 30)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        
        locationButton = UIButton()
        locationButton.setTitle("N. Campus", for: .normal)
        locationButton.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        locationButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        locationButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        locationButton.layer.cornerRadius = 22.5
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(locationButton)
        
        majorButton = UIButton()
        majorButton.setTitle("Information Science", for: .normal)
        majorButton.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        majorButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        majorButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        majorButton.layer.cornerRadius = 22.5
        majorButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(majorButton)
        
        bioTextViewLabel = UILabel()
        bioTextViewLabel.text = "About"
        bioTextViewLabel.font = UIFont.boldSystemFont(ofSize: 18)
        bioTextViewLabel.textColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        bioTextViewLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bioTextViewLabel)
 
        bioTextView = UITextView()
        bioTextView.text = "Hi! My name is Christine Yang and I'm an Information Science major. I like baking cakes and meeting new people... I love this app so much!!!"
        bioTextView.font = UIFont.systemFont(ofSize: 18)
        bioTextView.isEditable = false
        bioTextView.backgroundColor = .black
        bioTextView.textColor = UIColor(red: 254/255, green: 253/255, blue: 254/255, alpha: 1.0)
        bioTextView.textContainer.lineFragmentPadding = 0
        bioTextView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bioTextView)
        
        photosLabel = UILabel()
        photosLabel.text = "Photos"
        photosLabel.font = UIFont.boldSystemFont(ofSize: 18)
        photosLabel.textColor =  UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        photosLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(photosLabel)
        
        foodImgV1 = UIImageView()
        foodImgV1.image = defaultFoodImg
        foodImgV1.layer.cornerRadius = 10
        foodImgV1.clipsToBounds = true
        foodImgV1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV1)
        
        foodImgV2 = UIImageView()
        foodImgV2.image = defaultFoodImg
        foodImgV2.layer.cornerRadius = 10
        foodImgV2.clipsToBounds = true
        foodImgV2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV2)
        
        foodImgV3 = UIImageView()
        foodImgV3.image = defaultFoodImg
        foodImgV3.layer.cornerRadius = 10
        foodImgV3.clipsToBounds = true
        foodImgV3.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV3)
        
        foodImgV4 = UIImageView()
        foodImgV4.image = defaultFoodImg
        foodImgV4.layer.cornerRadius = 10
        foodImgV4.clipsToBounds = true
        foodImgV4.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV4)
        
        foodImgV5 = UIImageView()
        foodImgV5.image = defaultFoodImg
        foodImgV5.layer.cornerRadius = 10
        foodImgV5.clipsToBounds = true
        foodImgV5.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV5)
        
        foodImgV6 = UIImageView()
        foodImgV6.image = defaultFoodImg
        foodImgV6.layer.cornerRadius = 10
        foodImgV6.clipsToBounds = true
        foodImgV6.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foodImgV6)
        
        editAccountButton = UIButton()
        editAccountButton.setTitle("Edit Account", for: .normal)
        editAccountButton.backgroundColor = UIColor(red: 172/255, green: 170/255, blue: 166/255, alpha: 1.0)
        editAccountButton.addTarget(self, action: #selector(editPhotosButtonPressed), for: .touchUpInside)
        editAccountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        editAccountButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0), for: .normal)
        editAccountButton.layer.cornerRadius = 22.5
        editAccountButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(editAccountButton)
 
        scrollView.addSubview(contentView)
        view.addSubview(scrollView)
        setupConstraints()
    }
    
    @objc func editPhotosButtonPressed() {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        profileImgView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        profileImgView.backgroundColor = UIColor.clear
        profileImgView.contentMode = UIViewContentMode.scaleToFill
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupConstraints() {
        
        //scrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.widthAnchor.constraint(equalToConstant: view.bounds.width),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
        
        //contentView
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
            ])
        
        //profileImgView
        NSLayoutConstraint.activate([
            profileImgView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            profileImgView.topAnchor.constraint(equalTo:
                contentView.topAnchor, constant: 66),
            profileImgView.widthAnchor.constraint(equalToConstant: 110),
            profileImgView.heightAnchor.constraint(equalToConstant: 110)
            ])
        
        //nameLabel
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo:
                profileImgView.bottomAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: nameLabel.intrinsicContentSize.height)
            ])
        
        //locationButton
        NSLayoutConstraint.activate([
            locationButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            locationButton.topAnchor.constraint(equalTo:
                nameLabel.bottomAnchor, constant: 44),
            locationButton.heightAnchor.constraint(equalToConstant: 38),
            locationButton.widthAnchor.constraint(equalToConstant: 147.5)
            ])
        
        //majorButton
        NSLayoutConstraint.activate([
            majorButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            majorButton.topAnchor.constraint(equalTo:
                locationButton.bottomAnchor, constant: 21),
            majorButton.heightAnchor.constraint(equalToConstant: 38),
            majorButton.widthAnchor.constraint(equalToConstant: 147.5)
            ])

        //bioTextViewLabel
        NSLayoutConstraint.activate([
            bioTextViewLabel.topAnchor.constraint(equalTo: majorButton.bottomAnchor, constant: 19),
            bioTextViewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
            ])
        
        //bioTextView
        NSLayoutConstraint.activate([
            bioTextView.topAnchor.constraint(equalTo: bioTextViewLabel.bottomAnchor, constant: 8),
            bioTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            bioTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            bioTextView.heightAnchor.constraint(equalToConstant: 100)
            ])
        
        //photosLabel
        NSLayoutConstraint.activate([
            photosLabel.topAnchor.constraint(equalTo: bioTextView.bottomAnchor, constant: 19),
            photosLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16)
            ])
        
        //foodImgV1
        NSLayoutConstraint.activate([
            foodImgV1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            foodImgV1.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 16),
            foodImgV1.heightAnchor.constraint(equalToConstant: 110),
            foodImgV1.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //foodImgV2
        NSLayoutConstraint.activate([
            foodImgV2.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            foodImgV2.topAnchor.constraint(equalTo: foodImgV1.topAnchor),
            foodImgV2.heightAnchor.constraint(equalToConstant: 110),
            foodImgV2.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //foodImgV3
        NSLayoutConstraint.activate([
            foodImgV3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            foodImgV3.topAnchor.constraint(equalTo: foodImgV1.topAnchor),
            foodImgV3.heightAnchor.constraint(equalToConstant: 110),
            foodImgV3.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //foodImgV4
        NSLayoutConstraint.activate([
            foodImgV4.leadingAnchor.constraint(equalTo: foodImgV1.leadingAnchor),
            foodImgV4.topAnchor.constraint(equalTo: foodImgV1.bottomAnchor, constant: 20),
            foodImgV4.heightAnchor.constraint(equalToConstant: 110),
            foodImgV4.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //foodImgV5
        NSLayoutConstraint.activate([
            foodImgV5.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            foodImgV5.topAnchor.constraint(equalTo: foodImgV4.topAnchor),
            foodImgV5.heightAnchor.constraint(equalToConstant: 110),
            foodImgV5.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //foodImgV6
        NSLayoutConstraint.activate([
            foodImgV6.topAnchor.constraint(equalTo: foodImgV5.topAnchor, constant: 2),
            foodImgV6.trailingAnchor.constraint(equalTo: foodImgV3.trailingAnchor),
            foodImgV6.heightAnchor.constraint(equalToConstant: 110),
            foodImgV6.widthAnchor.constraint(equalToConstant: 110)
            ])
        
        //editAccountButton
        NSLayoutConstraint.activate([
            editAccountButton.topAnchor.constraint(equalTo: foodImgV5.bottomAnchor, constant: 32),
            editAccountButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -32),
            editAccountButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            editAccountButton.heightAnchor.constraint(equalToConstant: 38),
            editAccountButton.widthAnchor.constraint(equalToConstant: 147.5)
            ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.title = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
