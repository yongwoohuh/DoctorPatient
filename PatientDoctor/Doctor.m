//
//  Doctor.m
//  PatientDoctor
//
//  Created by Yongwoo Huh on 1/18/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [@[] mutableCopy];
    }
    return self;
}
- (BOOL)acceptPatient:(Patient *)patient
{
    if (patient.healthCard) {
        NSLog(@"%@ examined %@", self.name, patient.name);
        [self.acceptedPatients addObject:patient];
        return YES;
    } else {
        NSLog(@"%@ couldn't exmaine %@ becasue didn't %@ have a health card.", self.name, patient.name, patient.name);
        return NO;
    }
}
@end
