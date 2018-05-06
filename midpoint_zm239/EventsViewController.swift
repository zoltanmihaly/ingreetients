//
//  ViewController.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 27..
//  Copyright © 2018. Zozo. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    var serverEvents = [ServerEvent]()
    
    var collectionView: UICollectionView!
    
    //To kepp track which event was selected
    var lastSelectedEvent: Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Modifying view's tintcolor
        //view.tintColor = .white
        
        self.tabBarController?.tabBar.isTranslucent = false
        
        setupCollectionView()
        setupConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        getEvents()
        self.collectionView.reloadData()
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 7/255, alpha: 1.0)
        collectionView.delegate = self as! UICollectionViewDelegate
        collectionView.dataSource = self as! UICollectionViewDataSource
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(EventCollectionViewCell.self, forCellWithReuseIdentifier: "eventCell")
        view.addSubview(collectionView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func getEvents() {
        NetworkManager.getEvents { eventsArray in
            self.serverEvents = eventsArray
            self.collectionView.reloadData()
        }
    }
}

extension EventsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serverEvents.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
        cell.awakeFromNib()
        cell.configure(for: serverEvents[indexPath.row])
        cell.setNeedsUpdateConstraints()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width-48, height: 101)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(24, 24, 24, 24)
        //top, left, bottom, right
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let modalVC = EventDetailViewController()
        modalVC.nameLabelText = serverEvents[indexPath.row].name
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        let dateString = formatter.string(from: serverEvents[indexPath.row].time)
        modalVC.dateButtonText = "\(dateString)"
        
        modalVC.locationButtonText = serverEvents[indexPath.row].location
        modalVC.descriptionTextViewText = serverEvents[indexPath.row].description
        present(modalVC, animated: true, completion: nil)
        
        //To kepp track which event was selected
        lastSelectedEvent = indexPath.row
    }
}

