//
//  WeaveeSpecialFlowLayout.m
//  Weavee
//
//   
//

#import "WCAFKWeaveeSpecialFlowLayout.h"

@implementation WCAFKWeaveeSpecialFlowLayout{
    NSMutableArray<UICollectionViewLayoutAttributes *> *_WCAFK_attributesArray;
    NSMutableArray<NSNumber *> *_WCAFK_columnHeights;
}

- (void)prepareLayout {
    [super prepareLayout];
    _WCAFK_attributesArray = [NSMutableArray array];
    _WCAFK_columnHeights = [NSMutableArray array];
    
    for (NSInteger i = 0; i < self.WCAFK_columnNumber; i++) {
        [_WCAFK_columnHeights addObject:@(self.WCAFK_sectionInset.top)];
    }
    
    NSInteger WCAFK_itemCount = [self.collectionView numberOfItemsInSection:0];
    CGFloat WCAFK_contentWidth = CGRectGetWidth(self.collectionView.bounds) - self.WCAFK_sectionInset.left - self.WCAFK_sectionInset.right;
    CGFloat WCAFK_itemWidth = (WCAFK_contentWidth - (self.WCAFK_columnNumber - 1) * self.WCAFK_itemSpacing) / self.WCAFK_columnNumber;
    
    for (NSInteger i = 0; i < WCAFK_itemCount; i++) {
        NSIndexPath *WCAFK_indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        UICollectionViewLayoutAttributes *WCAFK_attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:WCAFK_indexPath];
        
        CGFloat WCAFK_itemHeight = [self.delegate WCAFKcollectionView:self.collectionView layout:self heightForItemAtIndexPath:WCAFK_indexPath itemWidth:WCAFK_itemWidth];
        
        NSInteger WCAFK_destColumn = 0;
        CGFloat WCAFK_minColumnHeight = [_WCAFK_columnHeights[0] floatValue];
        for (NSInteger WCAFK_col = 1; WCAFK_col < self.WCAFK_columnNumber; WCAFK_col++) {
            CGFloat WCAFK_colHeight = [_WCAFK_columnHeights[WCAFK_col] floatValue];
            if (WCAFK_colHeight < WCAFK_minColumnHeight) {
                WCAFK_minColumnHeight = WCAFK_colHeight;
                WCAFK_destColumn = WCAFK_col;
            }
        }
        
        CGFloat WCAFK_itemX = self.WCAFK_sectionInset.left + WCAFK_destColumn * (WCAFK_itemWidth + self.WCAFK_itemSpacing);
        CGFloat WCAFK_itemY = [_WCAFK_columnHeights[WCAFK_destColumn] floatValue];
        if (WCAFK_itemY != self.WCAFK_sectionInset.top) {
            WCAFK_itemY += self.WCAFK_lineSpacing;
        }
        
        WCAFK_attr.frame = CGRectMake(WCAFK_itemX, WCAFK_itemY, WCAFK_itemWidth, WCAFK_itemHeight);
        [_WCAFK_attributesArray addObject:WCAFK_attr];
        
        _WCAFK_columnHeights[WCAFK_destColumn] = @(CGRectGetMaxY(WCAFK_attr.frame));
    }
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return _WCAFK_attributesArray;
}

- (CGSize)collectionViewContentSize {
    CGFloat WCAFK_maxHeight = [[_WCAFK_columnHeights valueForKeyPath:@"@max.floatValue"] floatValue];
    return CGSizeMake(CGRectGetWidth(self.collectionView.bounds), WCAFK_maxHeight + self.WCAFK_sectionInset.bottom);
}

@end
