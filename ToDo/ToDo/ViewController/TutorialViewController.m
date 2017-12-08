//
//  TutorialViewController.m
//  ToDo
//
//  Created by Connexun on 06/12/17.
//  Copyright © 2017 own. All rights reserved.
//

#import "TutorialViewController.h"
#import "tutorialCollectionViewCell.h"
#import "TutorialPage.h"

@interface TutorialViewController ()
@property (weak, nonatomic) IBOutlet UIPageControl *tutorialPageControl;
- (IBAction)tutorialPageControllMethod:(id)sender;
@end

@implementation TutorialViewController
NSMutableArray *tutorialPageDetails;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    tutorialPageDetails = [TutorialPage getTutorialPageDetail];

    _tutorialPageControl.numberOfPages = [tutorialPageDetails count];
    _tutorialPageControl.currentPage = 0;
   // [_tutorialPageControl addTarget:self action:@selector(pageTurn:) forControlEvents:UIControlEventValueChanged];
    
    
}

-(void)pageTurn:(UIPageControl *) page
{
    NSInteger c=page.currentPage;
    if(c==0)
    {
        _tutorialPageControl.currentPage = 1;
    }else if(c==1)
    {
        _tutorialPageControl.currentPage = 2;
    }else if(c==2)
    {
        _tutorialPageControl.currentPage = 3;
    }else if(c==3)
    {
        _tutorialPageControl.currentPage = 4;
    }
    else{
        
    }
}

// collection view delegate methods
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [tutorialPageDetails count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    tutorialCollectionViewCell *cell = (tutorialCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"tutorialCell" forIndexPath:indexPath];
    
    TutorialPage *page = (TutorialPage *)[tutorialPageDetails objectAtIndex:indexPath.item];
    
    cell.tutorialImageView.image = [UIImage imageNamed:page.tutorialImageName];
    cell.tutorialHeadingLabel.text = page.tutorialImageDescription;
    
    return cell;
}




- (IBAction)tutorialPageControllMethod:(id)sender {
    [self.tutorialPageControl currentPage];
    
}
@end
