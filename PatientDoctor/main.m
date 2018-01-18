//
//  main.m
//  PatientDoctor
//
//  Created by Yongwoo Huh on 1/18/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Who" andSpecialization:@"back pain"];
        
        Patient *patient1 = [[Patient alloc]initWithName:@"Chris" Age:35];
        Patient *patient2 = [[Patient alloc]initWithName:@"Paul" Age:27];
        patient2.healthCard = NO;
        Patient *patient3 = [[Patient alloc]initWithName:@"Aron" Age:18];
        
        NSLog(@"%@ is a doctor who specializes in %@", doctor1.name, doctor1.specialization);
        NSLog(@"The patient is %@ and %ld years old", patient1.name, patient1.age);
        
        NSArray *patients = @[patient1, patient2, patient3];
        
        for (Patient *patient in patients) {
            [patient visitDoctor:doctor1];
            [doctor1 acceptPatient:patient];
        }
        
        NSLog(@"%@ accepted %ld patients", doctor1.name, [doctor1.acceptedPatients count]);
        
    }
    return 0;
}
