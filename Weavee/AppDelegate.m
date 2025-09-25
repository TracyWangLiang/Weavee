//
//  AppDelegate.m
//  Weavee
//
//   
//

#import "AppDelegate.h"
#import "Weavee.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <AdjustSdk/AdjustSdk.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert | UNAuthorizationOptionSound | UNAuthorizationOptionBadge)
                          completionHandler:^(BOOL granted, NSError * _Nullable error) {
        if (granted) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [[UIApplication sharedApplication] registerForRemoteNotifications];
            });
        }
    }];
    [[FBSDKApplicationDelegate sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    [self fuseFlareVaultWithWeftSpire];
    
    return YES;
}


- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    const unsigned *tokenBytes = (const unsigned *)[deviceToken bytes];
    NSMutableString *hexToken = [NSMutableString string];
    for (NSUInteger i = 0; i < deviceToken.length; i++) {
        [hexToken appendFormat:@"%02x", tokenBytes[i]];
    }
    /// pushToken
    Weavee * weavee = [[Weavee alloc] init];
    [weavee twistAuricLatticeWithEchoShard:@"lumenDriftCore" prismWeftPulse:hexToken];
    
}
-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    NSLog(@"❌ 获取推送 deviceToken 失败: %@", error);
}

#pragma mark - ad
-(void)fuseFlareVaultWithWeftSpire {
    [Adjust requestAppTrackingAuthorizationWithCompletionHandler:^(NSUInteger status) {
        switch (status) {
            case ATTrackingManagerAuthorizationStatusNotDetermined:
                NSLog(@"Tracking: Not Determined");
                break;
            case ATTrackingManagerAuthorizationStatusRestricted:
                NSLog(@"Tracking: Restricted");
                break;
            case ATTrackingManagerAuthorizationStatusDenied:
                NSLog(@"Tracking: Denied");
                break;
            case ATTrackingManagerAuthorizationStatusAuthorized:
                NSLog(@"Tracking: Authorized");
                break;
        }
    }];
    
    NSString *environment = ADJEnvironmentSandbox;
    ADJConfig *adjustConfig = [[ADJConfig alloc] initWithAppToken:@"oypt3hjxs0e8" environment:environment];
    [adjustConfig setAttConsentWaitingInterval:60];
    [adjustConfig disableAppTrackingTransparencyUsage];
    [Adjust initSdk:adjustConfig];
    
    [Adjust attributionWithCompletionHandler:^(ADJAttribution * _Nullable attribution) {
        [Adjust trackEvent:[[ADJEvent alloc] initWithEventToken:@"rb2914"]];
    }];
    
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
