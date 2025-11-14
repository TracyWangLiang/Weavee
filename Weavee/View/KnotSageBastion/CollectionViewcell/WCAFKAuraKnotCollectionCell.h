//
//  AuraKnotCollectionCell.h
//  Weavee
//
//   
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WCAFKAuraKnotCollectionCellDelegate <NSObject>
@optional
- (void)WCAFKnebulaChordReform:(NSString *)aetherBloom;
@end

@interface WCAFKAuraKnotCollectionCell : UICollectionViewCell

@property (nonatomic, weak) id<WCAFKAuraKnotCollectionCellDelegate> delegate;

- (void)WCAFKmergeTwineVaultWithFibreBeacon:(NSDictionary *)beaconSource;

@end

NS_ASSUME_NONNULL_END
