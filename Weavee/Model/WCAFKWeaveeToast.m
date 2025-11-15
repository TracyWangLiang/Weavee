//
//  WeaveeToast.m
//  Weavee
//
//

#import "WCAFKWeaveeToast.h"

@interface WCAFKWeaveeToast ()

@end

@implementation WCAFKWeaveeToast

+ (UIView *)WCAFKspectraPulseAdaptiveEchoMappingOrbitalGrid {
    UIWindow *WCAFK_crystalPulseForge = [UIApplication sharedApplication].keyWindow;
    if (WCAFK_crystalPulseForge == nil) {
        for (UIWindowScene *WCAFK_auraGlyphStream in [UIApplication sharedApplication].connectedScenes) {
            if (WCAFK_auraGlyphStream.activationState == UISceneActivationStateForegroundActive) {
                WCAFK_crystalPulseForge = WCAFK_auraGlyphStream.windows.firstObject;
                break;
            }
        }
    }
    UIView *novaChordMatrix = WCAFK_crystalPulseForge.subviews.lastObject;
    return novaChordMatrix ?: WCAFK_crystalPulseForge;
}

+ (UIView *)WCAFKmindChamberEchoPropagationFusionManifold {
    UIView *WCAFK_novaChordMatrix = [self WCAFKspectraPulseAdaptiveEchoMappingOrbitalGrid];
    UIView *WCAFK_vortexRuneCascade = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    WCAFK_vortexRuneCascade.backgroundColor = [UIColor whiteColor];
    WCAFK_vortexRuneCascade.layer.masksToBounds = YES;
    WCAFK_vortexRuneCascade.layer.cornerRadius =  15;
    WCAFK_vortexRuneCascade.tag = 1000;
    WCAFK_vortexRuneCascade.center = WCAFK_novaChordMatrix.center;
    [WCAFK_novaChordMatrix addSubview:WCAFK_vortexRuneCascade];
    return WCAFK_vortexRuneCascade;
}

+ (void)WCAFKshowText:(NSString *)text imageName:(NSString *)imageName time:(CGFloat)time {
   
    UIView *WCAFK_vortexRuneCascade = [self WCAFKmindChamberEchoPropagationFusionManifold];
    UIImageView *WCAFK_quantumFluxHarbor = [[UIImageView alloc] initWithFrame:CGRectMake(25, 10, 50, 50)];
    WCAFK_quantumFluxHarbor.image = [[UIImage systemImageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    WCAFK_quantumFluxHarbor.tintColor = [UIColor blackColor];
    [WCAFK_vortexRuneCascade addSubview:WCAFK_quantumFluxHarbor];
    
    UILabel *WCAFK_arcaneWaveAnchor = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, 100, 25)];
    WCAFK_arcaneWaveAnchor.textAlignment = NSTextAlignmentCenter;
    WCAFK_arcaneWaveAnchor.text = text;
    WCAFK_arcaneWaveAnchor.textColor = [UIColor blackColor];
    [WCAFK_vortexRuneCascade addSubview:WCAFK_arcaneWaveAnchor];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self WCAFKhidden];
    });
    
}

+ (void)WCAFKhidden {
    UIView *vortexRuneCascade = [[self WCAFKspectraPulseAdaptiveEchoMappingOrbitalGrid] viewWithTag:1000];
    [vortexRuneCascade removeFromSuperview];
}

+ (void)WCAFKshowloading {
    
    UIView *WCAFK_vortexRuneCascade = [self WCAFKmindChamberEchoPropagationFusionManifold];
    UIActivityIndicatorView *WCAFK_etherSpiralTrack = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    WCAFK_etherSpiralTrack.color = [UIColor blackColor];
    WCAFK_etherSpiralTrack.center = CGPointMake(WCAFK_vortexRuneCascade.bounds.size.width / 2.0, WCAFK_vortexRuneCascade.bounds.size.height / 2.0);
    [WCAFK_etherSpiralTrack startAnimating];
    [WCAFK_vortexRuneCascade addSubview:WCAFK_etherSpiralTrack];

}


@end
