//
//  TutorialPageClass.h
//  ToDo
//
//  Created by Connexun on 08/12/17.
//  Copyright © 2017 own. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TutorialPage : NSObject

@property (nonatomic, strong) NSString *tutorialImageName;
@property (nonatomic, strong) NSString *tutorialImageDescription;

+(NSMutableArray *)getTutorialPageDetail;






@end
