//
//  TutorialPageClass.m
//  ToDo
//
//  Created by Connexun on 08/12/17.
//  Copyright © 2017 own. All rights reserved.
//

#import "TutorialPage.h"

@implementation TutorialPage

+(NSMutableArray *)getTutorialPageDetail{

    NSMutableArray *tutorialArray = [NSMutableArray new];
    
    TutorialPage *obj = [[TutorialPage alloc]init];
    obj.tutorialImageName = @"Clock_Icon";
    obj.tutorialImageDescription = @"Time is the coin of your life. It is the only coin you have, and only you can determine how it will be spent. Be careful lest you let other people spend it for you.";
    
    TutorialPage *obj1 = [[TutorialPage alloc]init];
    obj1.tutorialImageName = @"Reminder_Icon";
    obj1.tutorialImageDescription = @"Every day, I like to wake up and remind myself to be grateful of the simple things.";
    
    TutorialPage *obj2 = [[TutorialPage alloc]init];
    obj2.tutorialImageName = @"Task_Icon";
    obj2.tutorialImageDescription = @"The task of the modern educator is not to cut down jungles, but to irrigate deserts.";
    
    [tutorialArray addObject:obj];
    [tutorialArray addObject:obj1];
    [tutorialArray addObject:obj2];
    
    return tutorialArray;
}




@end
