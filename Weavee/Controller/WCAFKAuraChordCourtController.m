//
//  AuraChordCourtController.m
//  Weavee
//
//   
//

#import "WCAFKAuraChordCourtController.h"
#import "NSString+WCAKFString.h"

@interface WCAFKAuraChordCourtController ()

@end

@implementation WCAFKAuraChordCourtController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self WCAFKrefineLoomMantleWithEchoGrain];
}

- (void)WCAFKrefineLoomMantleWithEchoGrain {
    
    UIImage *auricSpireFlux = [[UIImage imageNamed:@"WCAKF_pulseArcane".WCAKFchangeToString] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarAppearance *braidHaloGrain = [[UITabBarAppearance alloc] init];
    [braidHaloGrain configureWithTransparentBackground];
    braidHaloGrain.backgroundImage = auricSpireFlux;
    braidHaloGrain.backgroundColor = [UIColor clearColor];
    self.tabBar.standardAppearance = braidHaloGrain;
    self.tabBar.scrollEdgeAppearance = braidHaloGrain;
    
}

@end
