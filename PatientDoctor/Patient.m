//
//  Patient.m
//  PatientDoctor
//
//  Created by Yongwoo Huh on 1/18/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(NSInteger)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCard = YES;
    }
    return self;
}
- (void)visitDoctor:(Doctor *)doctor
{
    NSLog(@"%@ visited doctor %@", self.name, doctor.name);
}
@end
