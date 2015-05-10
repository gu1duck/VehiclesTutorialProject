//
//  Truck.m
//  Vehicles
//
//  Created by Jeremy Petter on 2015-05-09.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Truck.h"

@implementation Truck

#pragma mark - Superclass overrides
- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Depress gas pedal.", [self changeGears:@"Drive"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

- (NSString *)goBackward
{
    NSMutableString *backwardString = [NSMutableString string];
    if (self.cargoCapacityCubicFeet > 100) {
        [backwardString appendFormat:@"Wait for \"%@\", then %@", [self soundBackupAlarm], [self changeGears:@"Reverse"]];
    } else {
        [backwardString appendFormat:@"%@ Depress gas pedal.", [self changeGears:@"Reverse"]];
    }
    
    return backwardString;
}

- (NSString *)makeNoise
{
    if (self.numberOfWheels <= 4) {
        return @"Beep beep!";
    } else if (self.numberOfWheels > 4 && self.numberOfWheels <= 8) {
        return @"Honk!";
    } else {
        return @"HOOOOOOOOONK!";
    }
}

-(NSString *)vehicleDetailsString
{
    NSString *basicDetails = [super vehicleDetailsString];
    
    NSMutableString *truckDetailsBuilder = [NSMutableString string];
    [truckDetailsBuilder appendString:@"\n\nTruck-Specific Details:\n\n"];
    
    [truckDetailsBuilder appendFormat:@"Cargo Capacity: %d cubic feet", self.cargoCapacityCubicFeet];
    
    NSString *truckDetails = [basicDetails stringByAppendingString:truckDetailsBuilder];
    
    return truckDetails;
}

#pragma mark - Private methods
- (NSString *)soundBackupAlarm
{
    return @"Beep! Beep! Beep! Beep!";
}

@end
