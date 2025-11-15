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
    
    UIImage *WCAFK_auricSpireFlux = [[UIImage imageNamed:@"WCAKF_pulseArcane".WCAKFchangeToString] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarAppearance *WCAFK_braidHaloGrain = [[UITabBarAppearance alloc] init];
    [WCAFK_braidHaloGrain configureWithTransparentBackground];
    WCAFK_braidHaloGrain.backgroundImage = WCAFK_auricSpireFlux;
    WCAFK_braidHaloGrain.backgroundColor = [UIColor clearColor];
    self.tabBar.standardAppearance = WCAFK_braidHaloGrain;
    self.tabBar.scrollEdgeAppearance = WCAFK_braidHaloGrain;
    
}

@end
