//
//  RestaurantCollectionViewCell.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 27..
//  Copyright © 2018. Zozo. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    var eventNameLabel: UILabel!
    var eventDayLabel: UILabel!
    var eventMonthLabel: UILabel!
    var eventHourLabel: UILabel!
    var eventLocationLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = UIColor(red: 86/255, green: 83/255, blue: 83/255, alpha: 1.0)
        
        contentView.layer.cornerRadius = 22.5
        
        //eventDayLabel
        eventDayLabel = UILabel()
        eventDayLabel.font = UIFont.boldSystemFont(ofSize: 18)
        eventDayLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        eventDayLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventDayLabel)
        
        //eventMonthLabel
        eventMonthLabel = UILabel()
        eventMonthLabel.font = UIFont.boldSystemFont(ofSize: 18)
        eventMonthLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        eventMonthLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventMonthLabel)
        
        //eventNameLabel
        eventNameLabel = UILabel()
        eventNameLabel.font = UIFont.boldSystemFont(ofSize: 35)
        eventNameLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        eventNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventNameLabel)
        
        //eventLocationLabel
        eventLocationLabel = UILabel()
        eventLocationLabel.font = UIFont.systemFont(ofSize: 15)
        eventLocationLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        eventLocationLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventLocationLabel)
        
        //eventHourLabel
        eventHourLabel = UILabel()
        eventHourLabel.font = UIFont.systemFont(ofSize: 14)
        eventHourLabel.textColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        eventHourLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventHourLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        
        //eventDayLabel
        NSLayoutConstraint.activate([
            //eventDayLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            eventDayLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            eventDayLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
            ])
        
        //eventMonthLabel
        NSLayoutConstraint.activate([
            eventMonthLabel.centerYAnchor.constraint(equalTo: eventDayLabel.centerYAnchor),
            eventMonthLabel.leadingAnchor.constraint(equalTo: eventDayLabel.trailingAnchor, constant: 2)
            ])
        
        //eventNameLabel
        NSLayoutConstraint.activate([
            eventNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 21),
            eventNameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
            ])
        
        //eventLocationLabel
        NSLayoutConstraint.activate([
            eventLocationLabel.topAnchor.constraint(equalTo: eventNameLabel.bottomAnchor),
            eventLocationLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
            ])
        
        //eventHourLabel
        NSLayoutConstraint.activate([
            eventHourLabel.topAnchor.constraint(equalTo: eventDayLabel.bottomAnchor, constant: 4),
            eventHourLabel.centerXAnchor.constraint(equalTo: eventDayLabel.centerXAnchor)
            ])
        
        super.updateConstraints()
    }
    
    func configure(for event: ServerEvent) {
        
        eventNameLabel.text = event.name
        
        let calendar = Calendar.current
        let day = calendar.component(.day, from: event.time)
        var dayText = "\(day)"
        let weekDay = calendar.component(.weekday, from: event.time)
        switch weekDay {
        case 1:
            dayText = dayText + " Sun"
        case 2:
            dayText = dayText + " Mon"
        case 3:
            dayText = dayText + " Tue"
        case 4:
            dayText = dayText + " Wed"
        case 5:
            dayText = dayText + " Thu"
        case 6:
            dayText = dayText + " Fri"
        case 7:
            dayText = dayText + " Sat"
        default:
            dayText = dayText + " N/A"
        }
        eventDayLabel.text = dayText
        
        eventLocationLabel.text = event.location
    
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: event.time)
        eventHourLabel.text = dateString
    }
}





















