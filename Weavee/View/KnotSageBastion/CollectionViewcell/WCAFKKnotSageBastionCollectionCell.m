//
//  KnotSageBastionCollectionCell.m
//  Weavee
//
//   
//

#import "WCAFKKnotSageBastionCollectionCell.h"
//#import "SDWebImage.h"
#import "WCAFKWeavee.h"

@interface WCAFKKnotSageBastionCollectionCell()
@property (weak, nonatomic) IBOutlet UIImageView *WCAFK_auricSpireFlux;
@property (weak, nonatomic) IBOutlet UILabel *WCAFK_braidHaloGrain;

@end

@implementation WCAFKKnotSageBastionCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 18;
    
    self.WCAFK_auricSpireFlux.layer.masksToBounds = YES;
    self.WCAFK_auricSpireFlux.layer.cornerRadius = 18;
    
    
}

- (void)WCAFKtraceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    NSArray * fashionAnalysis = [anchorNodes objectForKey:@"WCAFK_fashionAnalysis".WCAKFchangeToString];
    if (fashionAnalysis.count > 0) {
        [WCAFKWeavee WCAFKquantumWaveCognitionStreamAmplifierMatrixCore:[NSString stringWithFormat:@"%@", fashionAnalysis.lastObject] completion:^(UIImage * _Nonnull image) {
            self.WCAFK_auricSpireFlux.image = image;
        }];
    }
    NSString * accessoryTrends = [NSString stringWithFormat:@"%@",[anchorNodes objectForKey:@"WCAFK_accessoryTrends".WCAKFchangeToString]];
    self.WCAFK_braidHaloGrain.text = accessoryTrends;
}

@end
