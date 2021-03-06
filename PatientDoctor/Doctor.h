//
//  Doctor.h
//  PatientDoctor
//
//  Created by Yongwoo Huh on 1/18/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet* acceptedPatients;
@property (nonatomic, strong) NSMutableDictionary *prescriptions;

- initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
- (BOOL)acceptPatient:(Patient *)patient;
- (NSString *)askAboutSymtoms:(Patient *)patient;
@end
