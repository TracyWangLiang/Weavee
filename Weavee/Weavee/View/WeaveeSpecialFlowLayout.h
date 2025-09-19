//
//  WeaveeSpecialFlowLayout.h
//  Weavee
//
//   
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WeaveeSpecialFlowLayoutDelegate <NSObject>
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)layout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath
                itemWidth:(CGFloat)itemWidth;
@end

@interface WeaveeSpecialFlowLayout : UICollectionViewFlowLayout

@property (nonatomic, weak) id<WeaveeSpecialFlowLayoutDelegate> delegate;
@property (nonatomic, assign) NSInteger columnNumber;
@property (nonatomic, assign) CGFloat itemSpacing;
@property (nonatomic, assign) CGFloat lineSpacing;
@property (nonatomic, assign) UIEdgeInsets sectionInset;

@end

NS_ASSUME_NONNULL_END
