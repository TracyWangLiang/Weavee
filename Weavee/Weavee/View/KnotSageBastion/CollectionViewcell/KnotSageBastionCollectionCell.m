//
//  KnotSageBastionCollectionCell.m
//  Weavee
//
//   
//

#import "KnotSageBastionCollectionCell.h"
#import "SDWebImage.h"

@interface KnotSageBastionCollectionCell()
@property (weak, nonatomic) IBOutlet UIImageView *auricSpireFlux;
@property (weak, nonatomic) IBOutlet UILabel *braidHaloGrain;

@end

@implementation KnotSageBastionCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 18;
    
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.cornerRadius = 18;
    
    
}

- (void)traceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    NSArray * fashionAnalysis = [anchorNodes objectForKey:@"fashionAnalysis"];
    if (fashionAnalysis.count > 0) {
        [self.auricSpireFlux sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@", fashionAnalysis.lastObject]]];
    }
    NSString * accessoryTrends = [NSString stringWithFormat:@"%@",[anchorNodes objectForKey:@"accessoryTrends"]];
    self.braidHaloGrain.text = accessoryTrends;
}

@end
