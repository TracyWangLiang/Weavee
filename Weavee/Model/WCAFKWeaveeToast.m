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
    UIWindow *crystalPulseForge = [UIApplication sharedApplication].keyWindow;
    if (crystalPulseForge == nil) {
        for (UIWindowScene *auraGlyphStream in [UIApplication sharedApplication].connectedScenes) {
            if (auraGlyphStream.activationState == UISceneActivationStateForegroundActive) {
                crystalPulseForge = auraGlyphStream.windows.firstObject;
                break;
            }
        }
    }
    UIView *novaChordMatrix = crystalPulseForge.subviews.lastObject;
    return novaChordMatrix ?: crystalPulseForge;
}

+ (UIView *)WCAFKmindChamberEchoPropagationFusionManifold {
    UIView *novaChordMatrix = [self WCAFKspectraPulseAdaptiveEchoMappingOrbitalGrid];
    UIView *vortexRuneCascade = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    vortexRuneCascade.backgroundColor = [UIColor whiteColor];
    vortexRuneCascade.layer.masksToBounds = YES;
    vortexRuneCascade.layer.cornerRadius =  15;
    vortexRuneCascade.tag = 1000;
    vortexRuneCascade.center = novaChordMatrix.center;
    [novaChordMatrix addSubview:vortexRuneCascade];
    return vortexRuneCascade;
}

+ (void)WCAFKshowText:(NSString *)text imageName:(NSString *)imageName time:(CGFloat)time {
   
    UIView *vortexRuneCascade = [self WCAFKmindChamberEchoPropagationFusionManifold];
   
    UIImageView *quantumFluxHarbor = [[UIImageView alloc] initWithFrame:CGRectMake(25, 10, 50, 50)];
    quantumFluxHarbor.image = [[UIImage systemImageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    quantumFluxHarbor.tintColor = [UIColor blackColor];
    [vortexRuneCascade addSubview:quantumFluxHarbor];
    
    UILabel *arcaneWaveAnchor = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, 100, 25)];
    arcaneWaveAnchor.textAlignment = NSTextAlignmentCenter;
    arcaneWaveAnchor.text = text;
    arcaneWaveAnchor.textColor = [UIColor blackColor];
    [vortexRuneCascade addSubview:arcaneWaveAnchor];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self WCAFKhidden];
    });
    
}

+ (void)WCAFKhidden {
    UIView *vortexRuneCascade = [[self WCAFKspectraPulseAdaptiveEchoMappingOrbitalGrid] viewWithTag:1000];
    [vortexRuneCascade removeFromSuperview];
}

+ (void)WCAFKshowloading {
    
    UIView *vortexRuneCascade = [self WCAFKmindChamberEchoPropagationFusionManifold];
    UIActivityIndicatorView *etherSpiralTrack = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    etherSpiralTrack.color = [UIColor blackColor];
    etherSpiralTrack.center = CGPointMake(vortexRuneCascade.bounds.size.width / 2.0, vortexRuneCascade.bounds.size.height / 2.0);
    [etherSpiralTrack startAnimating];
    [vortexRuneCascade addSubview:etherSpiralTrack];

}


@end
