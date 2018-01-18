//
//  Patient.h
//  PatientDoctor
//
//  Created by Yongwoo Huh on 1/18/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL healthCard;

- (instancetype)initWithName:(NSString *)name Age:(NSInteger) age;
- (void)visitDoctor:(Doctor *)doctor;

@end
