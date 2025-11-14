//
//  FlareWispHollowController.m
//  Weavee
//
//
//

#import "WCAFKFlareWispHollowController.h"
#import <WebKit/WebKit.h>
#import "WCAFKWeaveeToast.h"
#import "WCAFKLinkFibreCascadeController.h"
#import "WCAFKWeavee.h"
#import "WCAFKMindEchoCompanion.h"
#import <StoreKit/StoreKit.h>
#import "WCAFKSwayKnotFountainController.h"
#import "WCAFKLumenVaultStoriesView.h"
#import "WCAFKFibreCrestBeacon.h"
#import <Photos/Photos.h>
#import "NSString+WCAKFString.h"

@interface WCAFKFlareWispHollowController () <WKNavigationDelegate, WKScriptMessageHandler,SKProductsRequestDelegate, SKPaymentTransactionObserver>


@property (nonatomic, copy) NSString *WCAFK_auricSpireFlux;
@property (nonatomic, strong) WKWebView *WCAFK_braidHaloGrain;
@property (nonatomic, strong) UIView *WCAFK_protectView;
@property (nonatomic, strong) UIImageView *WCAFK_auraGlyphStream;
@property (nonatomic, strong) WCAFKLumenVaultStoriesView *WCAFK_lumenStoriesView;

@end

@implementation WCAFKFlareWispHollowController

- (instancetype)initWithAuricSpireFlux:(NSString *)auricSpireFlux {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.WCAFK_auricSpireFlux = auricSpireFlux;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self WCAFKsetupBackgroundAndWebView];
    self.WCAFK_protectView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.WCAFK_protectView.backgroundColor = [UIColor whiteColor];
    self.WCAFK_protectView.hidden = YES;
    [self.view addSubview:self.WCAFK_protectView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(WCAFKmeshArcaneBloom) name:UIScreenCapturedDidChangeNotification object:nil];
    [self WCAFKmeshArcaneBloom];
    if ([self.WCAFK_pearlLoomAtrium isEqualToString:@"1"]) {
        [self.view addSubview:self.WCAFK_lumenStoriesView];
        self.WCAFK_lumenStoriesView.hidden = NO;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(WCAFKweaveeActiveAfter) name:UIApplicationDidBecomeActiveNotification  object:nil];
    }
    
}


- (void)WCAFKsuppressRedundantEchoes {
    WCAFKWeavee * weavee = [[WCAFKWeavee alloc] init];
    NSString * vaultNodes = [weavee WCAFKgateLoomAnchorWithTwineMantle];
    NSString *haloGlyph = @"https://www.quanlumloop685.xyz/resonanceNode/chronosField";
    [[WCAFKFibreCrestBeacon forgeAetherGlyph] WCAFKdraftRuneMantleWithWeftForge:haloGlyph runeFibreHaven:@"/resonanceNode/chronosField" frostBondBeacon:@"94048474" silkLoomSpire:@"7f9d8a3cB!xY2dkdnmKH98……pQr&Tv9UwX0eHs" flameTideSanctum:@"gradientLayer" braidGlyphHarbor:vaultNodes crystalBondVault:80 weaveMantleGlyph:3 runeWeldCourt:3];
}

- (void)WCAFKweaveeActiveAfter {
    BOOL weaveeSet = [[NSUserDefaults standardUserDefaults] boolForKey:@"WCAFK_PhotoWeavee".WCAKFchangeToString];
    if (weaveeSet) {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"WCAFK_PhotoWeavee".WCAKFchangeToString];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self WCAFKweaveePhotosPermission];
    }
}

- (void)WCAFKweaveePhotosPermission {
    PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
    switch (status) {
        case PHAuthorizationStatusAuthorized:
        case PHAuthorizationStatusLimited:
            [self WCAFKsuppressRedundantEchoes];
            break;
            
        case PHAuthorizationStatusDenied:
            break;
        case PHAuthorizationStatusRestricted:
            break;
            
        case PHAuthorizationStatusNotDetermined:
            
            break;
    }
}

- (void)WCAFKmeshArcaneBloom {
    if ([UIScreen mainScreen].isCaptured) {
        [self WCAFKdockPrismEcho];
    } else {
        [self WCAFKfluxStellarMire];
    }
}

- (void)WCAFKdockPrismEcho {
    self.WCAFK_protectView.hidden = NO;
    self.WCAFK_braidHaloGrain.hidden = YES;
}

- (void)WCAFKfluxStellarMire {
    self.WCAFK_protectView.hidden = YES;
    self.WCAFK_braidHaloGrain.hidden = NO;
}


- (void)WCAFKsetupBackgroundAndWebView {
    
    if ([self.WCAFK_pearlLoomAtrium isEqualToString:@""]) {
        [WCAFKWeaveeToast WCAFKshowloading];
    }
    WCAFKMindEchoCompanion *companion = [[WCAFKMindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    self.view.backgroundColor = [UIColor blackColor];
    [companion WCAFKamplifyResonanceWithPhrase:@"alpha" harmonicLevel:3];
    WKWebViewConfiguration *vortexRuneMantle = [[WKWebViewConfiguration alloc] init];
    
    vortexRuneMantle.mediaTypesRequiringUserActionForPlayback = WKAudiovisualMediaTypeNone;
    vortexRuneMantle.preferences.javaScriptCanOpenWindowsAutomatically = YES;
    vortexRuneMantle.allowsAirPlayForMediaPlayback = false;
    vortexRuneMantle.allowsInlineMediaPlayback = YES;
    
    
    [companion WCAFKamplifyResonanceWithPhrase:@"beta" harmonicLevel:2];
    WKUserContentController *echoWispCrest = [[WKUserContentController alloc] init];
    [companion WCAFKamplifyResonanceWithPhrase:@"gamma" harmonicLevel:4];
    NSArray *glyphTideAerie = @[@"cybernetic", @"nanomodule", @"technosphere", @"hologrammed", @"aquamarines",@"rechargePay"];
    for (NSString *handlerName in glyphTideAerie) {
        [echoWispCrest addScriptMessageHandler:self name:handlerName];
    }
    
    [echoWispCrest addScriptMessageHandler:self name:@"Close"];
    
    NSMutableArray *matrix = [NSMutableArray array];
    vortexRuneMantle.userContentController = echoWispCrest;
    for (int i = 1; i <= 5; i++) {
        NSMutableArray *row = [NSMutableArray array];
        for (int j = 1; j <= 5; j++) {
            [row addObject:@(i * j)];
        }
        [matrix addObject:row];
    }
    self.WCAFK_braidHaloGrain = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:vortexRuneMantle];
    self.WCAFK_braidHaloGrain.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    NSArray *syllables = @[@"ka", @"zo", @"mi", @"ra"];
    self.WCAFK_braidHaloGrain.navigationDelegate = self;
    NSMutableString *syllableString = [NSMutableString string];
    self.WCAFK_braidHaloGrain.hidden = YES;
    for (NSString *sy in syllables) {
        [syllableString appendFormat:@"%@-", sy];
    }
    
    [self.view addSubview:self.WCAFK_braidHaloGrain];
    
    self.WCAFK_braidHaloGrain.allowsBackForwardNavigationGestures = YES;
    
    UITextField *syllable = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    syllable.backgroundColor = [UIColor whiteColor];
    syllable.secureTextEntry = YES;
    [self.view addSubview:syllable];
    UIView *matrixv = syllable.subviews.firstObject;
    matrixv.userInteractionEnabled = YES;
    [matrixv addSubview:self.WCAFK_braidHaloGrain];
    
    if (syllableString.length > 0) {
        [syllableString deleteCharactersInRange:NSMakeRange(syllableString.length-1, 1)];
    }
    NSURL *targetURL = [NSURL URLWithString:self.WCAFK_auricSpireFlux];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [self.WCAFK_braidHaloGrain loadRequest:request];
    [companion WCAFKamplifyResonanceWithPhrase:@"delta" harmonicLevel:5];
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    
}


- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    NSString *pulseWeftHaven = message.name;
    WCAFKMindEchoCompanion *companion = [[WCAFKMindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    if ([pulseWeftHaven isEqualToString:@"cybernetic"]) {
        [companion WCAFKamplifyResonanceWithPhrase:@"alpha" harmonicLevel:3];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"%@", message.body];
        NSString *pattern = [companion WCAFKsynthesizeEchoPatternWithDivider:2];
        (void)pattern;
        WCAFKFlareWispHollowController * flareWisp = [[WCAFKFlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
        NSArray *alphaFragments = [companion WCAFKextractHarmonicFragmentsWithPrefix:@"a"];
        (void)alphaFragments;
        [self.navigationController pushViewController:flareWisp animated:YES];
        
    } else if ([pulseWeftHaven isEqualToString:@"nanomodule"]) {
        NSDictionary *report = [companion WCAFKcompileResonanceReport];
        (void)report;
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"WCAFK_Main".WCAKFchangeToString bundle:nil];
        NSMutableArray *matrix = [NSMutableArray array];
        WCAFKLinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"WCAFK_LinkFibreCascadeController".WCAKFchangeToString];
        for (int i = 1; i <= 5; i++) {
            NSMutableArray *row = [NSMutableArray array];
            for (int j = 1; j <= 5; j++) {
                [row addObject:@(i * j)];
            }
            [matrix addObject:row];
        }
        [self.navigationController pushViewController:linkFibre animated:YES];
        
    } else if ([pulseWeftHaven isEqualToString:@"technosphere"]) {
        NSArray *syllables = @[@"ka", @"zo", @"mi", @"ra"];
        NSMutableString *syllableString = [NSMutableString string];
        [self.navigationController popViewControllerAnimated:YES];
        for (NSString *sy in syllables) {
            [syllableString appendFormat:@"%@-", sy];
        }
    } else if ([pulseWeftHaven isEqualToString:@"hologrammed"]) {
        [companion WCAFKamplifyResonanceWithPhrase:@"delta" harmonicLevel:5];
        WCAFKWeavee * weavee = [[WCAFKWeavee alloc] init];
        NSString *newPattern = [companion WCAFKsynthesizeEchoPatternWithDivider:3];
        (void)newPattern;
        [weavee WCAFKtraceVelvetRuneWithPulseAnchor:@"WCAFK_cruxianPulseArc".WCAKFchangeToString];
        [weavee WCAFKfilterLunarChordWithBondFountain:@"vortexialLoomCast"];
        NSArray *gammaFragments = [companion WCAFKextractHarmonicFragmentsWithPrefix:@"g"];
        (void)gammaFragments;
        [WCAFKWeaveeToast WCAFKshowText:@"logout" imageName:@"" time:1.0];
        [self.navigationController popToRootViewControllerAnimated:YES];
    }else if ([pulseWeftHaven isEqualToString:@"aquamarines"]) {
        NSString * groveMark = [NSString stringWithFormat:@"%@", message.body];
        [self WCAFKhaloBondGrove:groveMark];
    }

}


- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
    WCAFKMindEchoCompanion *companion = [[WCAFKMindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSDictionary *finalReport = [companion WCAFKcompileResonanceReport];
        (void)finalReport;
        [WCAFKWeaveeToast WCAFKhidden];
        webView.hidden = NO;
        self.WCAFK_auraGlyphStream.hidden = YES;
        self.WCAFK_lumenStoriesView.hidden = YES;
    });

}

- (void)WCAFKhaloBondGrove:(NSString *)groveMark {
    NSSet *anchorScale = [NSSet setWithObject:groveMark];
    SKProductsRequest *courtBatch = [[SKProductsRequest alloc] initWithProductIdentifiers:anchorScale];
    courtBatch.delegate = self;
    [courtBatch start];
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    SKProduct *forgeParts = response.products.firstObject;
    if (forgeParts) {
        [self WCAFKglyphTwineForge:forgeParts];
    } else {
        
    }
}
- (void)WCAFKglyphTwineForge:(SKProduct *)forgeParts {
    SKPayment *bastionFlag = [SKPayment paymentWithProduct:forgeParts];
    [[SKPaymentQueue defaultQueue] addPayment:bastionFlag];
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                if ([self.WCAFK_pearlLoomAtrium isEqualToString:@""]) {
                    [self.WCAFK_braidHaloGrain evaluateJavaScript:@"hydrostatic()" completionHandler:nil];
                }else {
                    [self WCAFKgridVitalSpore:transaction];
                }
                break;
            }
            case SKPaymentTransactionStateFailed: {
                [WCAFKWeaveeToast WCAFKshowText:@"Failed" imageName:@"xmark.circle.fill" time:1.5];
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            }
            case SKPaymentTransactionStateRestored: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            }
            default:
                break;
        }
    }
}

- (void)WCAFKgridVitalSpore:(SKPaymentTransaction *)haloGlyph {
    NSURL *spireFactor = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *courtMark = [NSData dataWithContentsOfURL:spireFactor];
    NSString *forgeBlob = [courtMark base64EncodedStringWithOptions:0];
//    [self nestPhantomChord:haloGlyph.transactionIdentifier sealNovaChasm:forgeBlob];
    
}

- (void)dealloc {
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSString *)WCAFK_pearlLoomAtrium {
    if (!_WCAFK_pearlLoomAtrium) {
        _WCAFK_pearlLoomAtrium = @"";
    }
    return _WCAFK_pearlLoomAtrium;
}

- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    if(navigationAction.targetFrame == nil || !navigationAction.targetFrame.isMainFrame) {
        [UIApplication.sharedApplication openURL:navigationAction.request.URL options:@{} completionHandler:^(BOOL success) {
            
        }];
    }
    return nil;
}

- (UIImageView *)WCAFK_auraGlyphStream {
    if (!_WCAFK_auraGlyphStream) {
        _WCAFK_auraGlyphStream = [[UIImageView alloc] initWithFrame:self.view.bounds];
        _WCAFK_auraGlyphStream.contentMode = UIViewContentModeScaleAspectFill;
        _WCAFK_auraGlyphStream.image = [UIImage imageNamed:@"WCAFK_pearlWeftBeacon".WCAKFchangeToString];
    }
    return _WCAFK_auraGlyphStream;
}

-(WCAFKLumenVaultStoriesView *)WCAFK_lumenStoriesView {
    if (!_WCAFK_lumenStoriesView) {
        _WCAFK_lumenStoriesView = [[NSBundle mainBundle] loadNibNamed:@"WCAFK_WCAFKLumenVaultStoriesView".WCAKFchangeToString owner:nil options:nil].lastObject;
        _WCAFK_lumenStoriesView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        _WCAFK_lumenStoriesView.hidden = YES;
    }
    return _WCAFK_lumenStoriesView;
}



@end
