//
//  AuraChordCourtController.m
//  Weavee
//
//   
//

#import "AuraChordCourtController.h"

@interface AuraChordCourtController ()

@end

@implementation AuraChordCourtController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self refineLoomMantleWithEchoGrain];
}

- (void)refineLoomMantleWithEchoGrain {
    
    UIImage *auricSpireFlux = [[UIImage imageNamed:@"pulseArcane"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarAppearance *braidHaloGrain = [[UITabBarAppearance alloc] init];
    [braidHaloGrain configureWithTransparentBackground];
    braidHaloGrain.backgroundImage = auricSpireFlux;
    braidHaloGrain.backgroundColor = [UIColor clearColor];
    self.tabBar.standardAppearance = braidHaloGrain;
    self.tabBar.scrollEdgeAppearance = braidHaloGrain;
    
}

@end
