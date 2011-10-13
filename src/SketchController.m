//
//  SketchController.m
//  Sketch
//
//  Created by Presenter on 10/4/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SketchController.h"

@implementation SketchController
@synthesize sketchdelegate;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ((SketchController*)segue.destinationViewController).sketchdelegate = (id)self;
}

- (void)dismissModal {
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction)donePressed:(id)sender {
    if (sketchdelegate && [sketchdelegate respondsToSelector:@selector(dismissModal)]) {
        [self.sketchdelegate dismissModal];
    }
}

@end
