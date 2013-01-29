//
//  CViewController.m
//  TablessNavigationTemplate
//
//  Created by Hemanta Sapkota on 1/16/13.
//  Copyright (c) 2013 Hemanta Sapkota. All rights reserved.
//

#import "CRootViewController.h"

@interface CRootViewController ()

@end

@class CNavViewController;

@implementation CRootViewController

@synthesize viewC;

    enum TranslateDirection {
        LEFT, RIGHT
    };

    const float TRANSLATE_CONST = 250;
    float translateX = TRANSLATE_CONST;
    enum TranslateDirection td = RIGHT;

- (IBAction)showNavigation:(id)sender {
    
    [UIView animateWithDuration:0.5f
     
            delay:0.0
     
            options:UIViewAnimationCurveLinear
     
            animations:^{
                if (td == LEFT) {
                    translateX = 0;
                } else if (td == RIGHT) {
                    translateX = TRANSLATE_CONST;
                }
                
                CGAffineTransform trans = CGAffineTransformMakeTranslation(translateX, 0);
                
                self.navigationController.view.transform = trans;
                
            }
     
            completion:^(BOOL finished){
                
                if (td == LEFT) {
                    td = RIGHT;
                } else if (td == RIGHT) {
                    td = LEFT;
                }
                
            }
     ];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    viewC = [self.storyboard instantiateViewControllerWithIdentifier:@"navigationView"];
    
    [self.navigationController.view.window insertSubview:viewC.view atIndex:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
