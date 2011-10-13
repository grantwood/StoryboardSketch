//
//  SketchController.h
//  Sketch
//
//  Created by Presenter on 10/4/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SketchDelegate <NSObject>
- (void)dismissModal;
@end

@interface SketchController : UIViewController {
    __weak id<SketchDelegate> sketchdelegate;
}

@property (weak) id<SketchDelegate> sketchdelegate;

-(IBAction)donePressed:(id)sender;

@end
