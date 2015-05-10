//
//  Car.h
//  Vehicles
//
//  Created by Jeremy Petter on 2015-05-09.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Car : Vehicle

@property (nonatomic, assign) BOOL isConvertible;
@property (nonatomic, assign) BOOL isHatchback;
@property (nonatomic, assign) BOOL hasSunroof;
@property (nonatomic, assign) NSInteger numberOfDoors;



@end
