//
//  AppDelegate.m
//  Weavee
//
//   
//

#import "AppDelegate.h"
#import "Weavee.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self requestTrackingAuthorization];
    return YES;
}


- (void)requestTrackingAuthorization {
    ATTrackingManagerAuthorizationStatus status = [ATTrackingManager trackingAuthorizationStatus];
    switch (status) {
        case ATTrackingManagerAuthorizationStatusNotDetermined: {
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self handleTrackingStatus:status];
                });
            }];
            break;
        }
        case ATTrackingManagerAuthorizationStatusRestricted:
        case ATTrackingManagerAuthorizationStatusDenied:
            break;
        case ATTrackingManagerAuthorizationStatusAuthorized:
            break;
    }
}

- (void)handleTrackingStatus:(ATTrackingManagerAuthorizationStatus)status {
    switch (status) {
        case ATTrackingManagerAuthorizationStatusAuthorized:
            break;
        case ATTrackingManagerAuthorizationStatusDenied:
            break;
        case ATTrackingManagerAuthorizationStatusRestricted:
            break;
        case ATTrackingManagerAuthorizationStatusNotDetermined:
            break;
    }
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
