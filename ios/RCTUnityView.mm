//
//  RCTUnityView.m
//  ReactNativeUnitylib
//
//  Created by Chaim on 2019/12/23.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RCTUnityView.h"
#import "UnityManager.h"

@implementation RCTUnityView
 
-(id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self){

//    AppDelegate * appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
//    UIView* unityView = [[[appDelegate ufw] appController] window];
    UnityManager* um = (UnityManager*)[UnityManager sharedInstance];
    
    self.uView = (UIView*)[um window];
  }
  return self;
}
 
-(void)layoutSubviews
{
  [super layoutSubviews];
  [self.uView removeFromSuperview];
  self.uView.frame = self.bounds;
  [self insertSubview:self.uView atIndex:0];
  [self.uView setNeedsLayout];
}
 
@end
