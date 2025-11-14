//
//  KnotBastionCollectionCell.m
//  Weavee
//
//   
//

#import "WCAFKKnotBastionCollectionCell.h"
//#import "SDWebImage.h"
#import "WCAFKWeavee.h"

@interface WCAFKKnotBastionCollectionCell()

@property (weak, nonatomic) IBOutlet UIImageView *WCAFK_glyphTideHarbor;
@property (weak, nonatomic) IBOutlet UILabel *WCAFK_pulseWeftHaven;

@end


@implementation WCAFKKnotBastionCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 13;
    
}

- (void)WCAFKtraceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    NSArray * fashionAnalysis = [anchorNodes objectForKey:@"WCAFK_fashionAnalysis".WCAKFchangeToString];
    if (fashionAnalysis.count > 0) {
        [WCAFKWeavee WCAFKquantumWaveCognitionStreamAmplifierMatrixCore:[NSString stringWithFormat:@"%@", fashionAnalysis.firstObject] completion:^(UIImage * _Nonnull image) {
            self.WCAFK_glyphTideHarbor.image = image;
        }];
    }
    NSString * accessoryTrends = [NSString stringWithFormat:@"%@",[anchorNodes objectForKey:@"WCAFK_accessoryTrends".WCAKFchangeToString]];
    self.WCAFK_pulseWeftHaven.text = accessoryTrends;
    
}


@end
