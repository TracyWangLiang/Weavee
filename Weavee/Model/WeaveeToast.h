//
//  WeaveeToast.h
//  Weavee
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeaveeToast : UIView

+ (void)showText:(NSString *)text imageName:(NSString *)imageName time:(CGFloat)time;
+ (void)hidden;
+ (void)showloading;


@end

NS_ASSUME_NONNULL_END
