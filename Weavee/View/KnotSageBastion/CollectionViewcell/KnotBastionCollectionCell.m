//
//  KnotBastionCollectionCell.m
//  Weavee
//
//   
//

#import "KnotBastionCollectionCell.h"
//#import "SDWebImage.h"
#import "Weavee.h"

@interface KnotBastionCollectionCell()

@property (weak, nonatomic) IBOutlet UIImageView *glyphTideHarbor;
@property (weak, nonatomic) IBOutlet UILabel *pulseWeftHaven;

@end


@implementation KnotBastionCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 13;
    
}

- (void)traceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    NSArray * fashionAnalysis = [anchorNodes objectForKey:@"fashionAnalysis"];
    if (fashionAnalysis.count > 0) {
        [Weavee quantumWaveCognitionStreamAmplifierMatrixCore:[NSString stringWithFormat:@"%@", fashionAnalysis.firstObject] completion:^(UIImage * _Nonnull image) {
            self.glyphTideHarbor.image = image;
        }];
    }
    NSString * accessoryTrends = [NSString stringWithFormat:@"%@",[anchorNodes objectForKey:@"accessoryTrends"]];
    self.pulseWeftHaven.text = accessoryTrends;
    
}


@end
