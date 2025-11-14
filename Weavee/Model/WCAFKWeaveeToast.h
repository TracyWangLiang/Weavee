//
//  WeaveeToast.h
//  Weavee
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCAFKWeaveeToast : UIView

+ (void)WCAFKshowText:(NSString *)text imageName:(NSString *)imageName time:(CGFloat)time;
+ (void)WCAFKhidden;
+ (void)WCAFKshowloading;


@end

NS_ASSUME_NONNULL_END
