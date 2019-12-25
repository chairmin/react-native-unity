//
//  UnityManager.m
//  ReactNativeUnitylib
//
//  Created by Chaim on 2019/12/24.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/NSProcessInfo.h>
#import "UnityManager.h"

// keep arg for unity init from non main
NSDictionary* appLaunchOpts;

static UnityManager *manager = nil;

@implementation UnityManager

+ (instancetype)sharedInstance{
    return [[self alloc] init];
}

- (instancetype)init{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      manager = [super init];
      [self initUnity];
    });
    return manager;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [super allocWithZone:zone];
    });
    return manager;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return manager;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return manager;
}

- (UnityFramework*)UnityFrameworkLoad
{
  NSString* bundlePath = nil;
  bundlePath = [[NSBundle mainBundle] bundlePath];
  bundlePath = [bundlePath stringByAppendingString: @"/Frameworks/UnityFramework.framework"];
  
  NSBundle* bundle = [NSBundle bundleWithPath: bundlePath];
  if ([bundle isLoaded] == false) [bundle load];
  
  UnityFramework* ufw = [bundle.principalClass getInstance];
  if (![ufw appController])
  {
    // unity is not initialized
    [ufw setExecuteHeader: &_mh_execute_header];
  }
  return ufw;
}

- (bool)unityIsInitialized { return [self ufw] && [[self ufw] appController]; }

// Method to initialize RN and Unity
- (void)initUnity
{
  // Unity bundle loading
  if([self unityIsInitialized]) { // safeguard for unity bundle dynamic load/unload example (not in use)
    return;
  }
  [self setUfw: [self UnityFrameworkLoad]];
  // Set UnityFramework target for Unity-iPhone/Data folder to make Data part of a UnityFramework.framework and uncomment call to setDataBundleId
  // ODR is not supported in this case, ( if you need embedded and ODR you need to copy data )
  [[self ufw] setDataBundleId: "com.unity3d.framework"];
//  [[self ufw] registerFrameworkListener: self];
//  [NSClassFromString(@"FrameworkLibAPI") registerAPIforNativeCalls:self];

  char szBuf[256] = {0};
  char* pArgv = szBuf;
  NSArray* arr = [[NSProcessInfo processInfo] arguments];
  NSString *pname = [arr componentsJoinedByString:@" "];
  if(pname){
    strncpy(szBuf, [pname UTF8String], sizeof(szBuf)-1);
  }
  [[self ufw] runEmbeddedWithArgc: 1 argv: &pArgv appLaunchOpts: appLaunchOpts];
//  [[self ufw] runEmbeddedWithArgc: gArgc argv: gArgv appLaunchOpts: appLaunchOpts];

  self.window = [[[self ufw] appController] window];
  self.view = [[[self ufw] appController] rootView];
}

@end


