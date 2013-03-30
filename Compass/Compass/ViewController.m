//
//  ViewController.m
//  GPS
//
//  Created by Dolice on 2013/03/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  _locationManager = [[CLLocationManager alloc] init];
  _locationManager.delegate = self;
  _locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
  _locationManager.distanceFilter = kCLDistanceFilterNone;
  [_locationManager startUpdatingLocation];
  [_locationManager startUpdatingHeading];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
  self.latLabel.text = [NSString stringWithFormat:@"緯度=%g", newLocation.coordinate.latitude];
  self.lngLabel.text = [NSString stringWithFormat:@"軽度=%g", newLocation.coordinate.longitude];
}

- (void)locationManager:(CLLocationManager *)manager
       didUpdateHeading:(CLHeading *)heading {
  self.compass.transform = CGAffineTransformMakeRotation(-heading.magneticHeading * M_PI/180);
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
