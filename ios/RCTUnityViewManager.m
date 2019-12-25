//
//  RCTUnityViewManager.m
//  ReactNativeUnitylib
//
//  Created by Chaim on 2019/12/23.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RCTUnityViewManager.h"
#import "RCTUnityView.h"
 
@implementation RCTUnityViewManager
 
RCT_EXPORT_MODULE(RNUnityView);
 
- (UIView *)view
{
  return [[RCTUnityView alloc] init];
}
 
- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}
 
@end
