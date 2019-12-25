//
//  UnityManager.h
//  ReactNativeUnitylib
//
//  Created by Chaim on 2019/12/24.
//  Copyright © 2019 Facebook. All rights reserved.
//

#ifndef UnityManager_h
#define UnityManager_h

#include <UnityFramework/UnityFramework.h>
#include <UnityFramework/NativeCallProxy.h>

@interface UnityManager : UIResponder <UnityFrameworkListener>

@property (nonatomic, strong) UIView *window;
@property (nonatomic, strong) UIView *view;
@property UnityFramework* ufw;

+ (UnityManager *) sharedInstance;

@end

#endif /* UnityManager_h */
