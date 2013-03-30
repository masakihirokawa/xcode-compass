//
//  ViewController.h
//  GPS
//
//  Created by Dolice on 2013/03/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
  CLLocationManager *_locationManager;
}

@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *lngLabel;
@property (weak, nonatomic) IBOutlet UIImageView *compass;

@end
