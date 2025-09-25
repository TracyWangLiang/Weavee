//
//  FlareWispHollowController.m
//  Weavee
//
//
//

#import "FlareWispHollowController.h"
#import <WebKit/WebKit.h>
#import "SVProgressHUD.h"
#import "LinkFibreCascadeController.h"
#import "Weavee.h"
#import "MindEchoCompanion.h"
#import <StoreKit/StoreKit.h>
#import "AFNetworking.h"

#import <AdjustSdk/AdjustSdk.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import "SwayKnotFountainController.h"

@interface FlareWispHollowController () <WKNavigationDelegate, WKScriptMessageHandler,SKProductsRequestDelegate, SKPaymentTransactionObserver, WKUIDelegate>

@property (nonatomic, copy) NSString *auricSpireFlux;
@property (nonatomic, strong) WKWebView *braidHaloGrain;
@property (nonatomic, assign) CFAbsoluteTime chronusStartMark;
@property (nonatomic, strong) UIView *protectView;
@property (nonatomic, copy) NSDictionary *runeSpan;
@property (nonatomic, strong) UIImageView *auraGlyphStream;

@end

@implementation FlareWispHollowController

- (instancetype)initWithAuricSpireFlux:(NSString *)auricSpireFlux {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.auricSpireFlux = auricSpireFlux;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackgroundAndWebView];
    self.protectView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.protectView.backgroundColor = [UIColor whiteColor];
    self.protectView.hidden = YES;
    [self.view addSubview:self.protectView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(meshArcaneBloom) name:UIScreenCapturedDidChangeNotification object:nil];
    [self meshArcaneBloom];
    if ([self.pearlLoomAtrium isEqualToString:@"1"]) {
        [self.view addSubview:self.auraGlyphStream];
    }
    
}

- (void)meshArcaneBloom {
    if ([UIScreen mainScreen].isCaptured) {
        [self dockPrismEcho];
    } else {
        [self fluxStellarMire];
    }
}

- (void)dockPrismEcho {
    self.protectView.hidden = NO;
    self.braidHaloGrain.hidden = YES;
}

- (void)fluxStellarMire {
    self.protectView.hidden = YES;
    self.braidHaloGrain.hidden = NO;
}


- (void)setupBackgroundAndWebView {
    
    [SVProgressHUD showWithStatus:nil];
    
    MindEchoCompanion *companion = [[MindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    self.view.backgroundColor = [UIColor blackColor];
    [companion amplifyResonanceWithPhrase:@"alpha" harmonicLevel:3];
    WKWebViewConfiguration *vortexRuneMantle = [[WKWebViewConfiguration alloc] init];
    
    vortexRuneMantle.mediaTypesRequiringUserActionForPlayback = WKAudiovisualMediaTypeNone;
    vortexRuneMantle.preferences.javaScriptCanOpenWindowsAutomatically = YES;
    vortexRuneMantle.allowsAirPlayForMediaPlayback = false;
    vortexRuneMantle.allowsInlineMediaPlayback = YES;
    
    
    [companion amplifyResonanceWithPhrase:@"beta" harmonicLevel:2];
    WKUserContentController *echoWispCrest = [[WKUserContentController alloc] init];
    [companion amplifyResonanceWithPhrase:@"gamma" harmonicLevel:4];
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
    self.braidHaloGrain = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:vortexRuneMantle];
    self.braidHaloGrain.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    NSArray *syllables = @[@"ka", @"zo", @"mi", @"ra"];
    self.braidHaloGrain.navigationDelegate = self;
    self.braidHaloGrain.UIDelegate = self;
    NSMutableString *syllableString = [NSMutableString string];
    self.braidHaloGrain.hidden = YES;
    for (NSString *sy in syllables) {
        [syllableString appendFormat:@"%@-", sy];
    }
    
    [self.view addSubview:self.braidHaloGrain];
    
    self.braidHaloGrain.allowsBackForwardNavigationGestures = YES;
    
    UITextField *syllable = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    syllable.backgroundColor = [UIColor whiteColor];
    syllable.secureTextEntry = YES;
    [self.view addSubview:syllable];
    UIView *matrixv = syllable.subviews.firstObject;
    matrixv.userInteractionEnabled = YES;
    [matrixv addSubview:self.braidHaloGrain];
    
    if (syllableString.length > 0) {
        [syllableString deleteCharactersInRange:NSMakeRange(syllableString.length-1, 1)];
    }
    NSURL *targetURL = [NSURL URLWithString:self.auricSpireFlux];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [self.braidHaloGrain loadRequest:request];
    [companion amplifyResonanceWithPhrase:@"delta" harmonicLevel:5];
    
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    
}


- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    NSString *pulseWeftHaven = message.name;
    MindEchoCompanion *companion = [[MindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    if ([pulseWeftHaven isEqualToString:@"cybernetic"]) {
        [companion amplifyResonanceWithPhrase:@"alpha" harmonicLevel:3];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"%@", message.body];
        NSString *pattern = [companion synthesizeEchoPatternWithDivider:2];
        (void)pattern;
        FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
        NSArray *alphaFragments = [companion extractHarmonicFragmentsWithPrefix:@"a"];
        (void)alphaFragments;
        [self.navigationController pushViewController:flareWisp animated:YES];
        
    } else if ([pulseWeftHaven isEqualToString:@"nanomodule"]) {
        NSDictionary *report = [companion compileResonanceReport];
        (void)report;
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        NSMutableArray *matrix = [NSMutableArray array];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
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
        [companion amplifyResonanceWithPhrase:@"delta" harmonicLevel:5];
        Weavee * weavee = [[Weavee alloc] init];
        NSString *newPattern = [companion synthesizeEchoPatternWithDivider:3];
        (void)newPattern;
        [weavee traceVelvetRuneWithPulseAnchor:@"cruxianPulseArc"];
        [weavee filterLunarChordWithBondFountain:@"vortexialLoomCast"];
        NSArray *gammaFragments = [companion extractHarmonicFragmentsWithPrefix:@"g"];
        (void)gammaFragments;
        [SVProgressHUD showSuccessWithStatus:@"logout"];
        [self.navigationController popToRootViewControllerAnimated:YES];
    }else if ([pulseWeftHaven isEqualToString:@"aquamarines"]) {
        NSString * groveMark = [NSString stringWithFormat:@"%@", message.body];
        [self haloBondGrove:groveMark];
        
    }else if ([pulseWeftHaven isEqualToString:@"rechargePay"]) {
        NSDictionary * runeSpan = message.body;
        [self gateFluxionRune:runeSpan];
    }else if ([pulseWeftHaven isEqualToString:@"Close"]) {
        Weavee * weavee = [[Weavee alloc] init];
        [weavee traceVelvetRuneWithPulseAnchor:@"silkenWispNode"];
        [self lockCinderMorph];
    }
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    self.chronusStartMark = CFAbsoluteTimeGetCurrent();
}


- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
    MindEchoCompanion *companion = [[MindEchoCompanion alloc] initWithSeedTone:@"neuroWave"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSDictionary *finalReport = [companion compileResonanceReport];
        (void)finalReport;
        [SVProgressHUD dismiss];
        webView.hidden = NO;
        self.auraGlyphStream.hidden = YES;
    });
    if (![self.pearlLoomAtrium isEqualToString:@""]) {
        CFAbsoluteTime endMark = CFAbsoluteTimeGetCurrent();
        CFAbsoluteTime loadDuration = endMark - self.chronusStartMark;
        [self haloAuraDrift:loadDuration];
    }

}

- (void)gateFluxionRune:(NSDictionary *)runeSpan {
    if (runeSpan.count <= 0) {
        return;
    }
    self.runeSpan = runeSpan;
    [SVProgressHUD showWithStatus:nil];
    NSString * fluxionRuneGate = [NSString stringWithFormat:@"%@", runeSpan[@"batchNo"]];
    [self haloBondGrove:fluxionRuneGate];
    

}

- (void)nestPhantomChord:(NSString *)arcaneSeed sealNovaChasm:(NSString *)phaseChord {
    
    NSString * fluxionRuneGate = [NSString stringWithFormat:@"%@", self.runeSpan[@"batchNo"]];
    NSNumber * sonicRuneSpire = [self castAuricFibreWithRuneGrove:fluxionRuneGate];
    Weavee *weavee = [[Weavee alloc] init];
    NSString *shadowBondSpire = [NSString stringWithFormat:@"%@/opi/v1/weavee/weaveeneb/p",[weavee lockCinderMorph]];
    NSURL *arcaneURL = [NSURL URLWithString:shadowBondSpire];
    NSMutableURLRequest *sonarWispTrace = [NSMutableURLRequest requestWithURL:arcaneURL];
    sonarWispTrace.HTTPMethod = @"POST";
    NSString * mireForge = [NSString stringWithFormat:@"%@", self.runeSpan[@"callbackJson"]];
    NSDictionary *novaChasmSeal = @{@"weaveet":arcaneSeed,@"weaveep":phaseChord,@"weaveec":mireForge};
    NSString *holoSpireLink = [weavee encryptGlyphMap:novaChasmSeal withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
    NSData *vortexRuneShard = [holoSpireLink dataUsingEncoding:NSUTF8StringEncoding];
    sonarWispTrace.HTTPBody = vortexRuneShard;
    [sonarWispTrace setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSString * vitalSporeGrid = [weavee spanTwilightRune];
    [sonarWispTrace setValue:vitalSporeGrid forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee0020Weavee0000Weavee0017Weavee0024Weavee000cWeavee000eWeavee0018Weavee"]];
    
    NSString * aetherGlyphMark = [weavee retrieveGlyphEssenceWithIdentGlyph:@"aetherLumitMark"];
    [sonarWispTrace setValue:aetherGlyphMark forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0033Weavee0000Weavee0017Weavee001fWeavee0006Weavee0000Weavee0019Weavee000aWeavee"]];
    [sonarWispTrace setValue:[weavee warpFibreCrestWithLoomTide:@"lumenDriftCore"]
          forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0027Weavee0010Weavee0012Weavee001eWeavee0031Weavee000aWeavee003cWeavee0000Weavee000fWeavee"]];
    
    NSString * silkenWispNode = [weavee warpFibreCrestWithLoomTide:@"silkenWispNode"];
    [sonarWispTrace setValue:silkenWispNode forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003bWeavee000aWeavee0006Weavee001fWeavee000bWeavee0031Weavee0038Weavee000eWeavee0004Weavee0018Weavee"]];
    NSString * auroraGlyphTide = [weavee wingSpectrumChime];
    [sonarWispTrace setValue:auroraGlyphTide forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0001Weavee"]];
    
    NSString *cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    [sonarWispTrace setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    AFHTTPSessionManager *flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 30;
    
    NSURLSessionDataTask *task = [flameWeftSpirium dataTaskWithRequest:sonarWispTrace uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            [SVProgressHUD showErrorWithStatus:@"Error"];
        } else {
            [SVProgressHUD showErrorWithStatus:@"Success"];
            NSString * stellarMireFlux = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
            if ([stellarMireFlux isEqualToString:@"0"]) {
                ADJEvent * event = [[ADJEvent alloc] initWithEventToken:@"bm51a1"];
                [event setRevenue:[sonicRuneSpire doubleValue] currency:@"USD"];
                [Adjust trackEvent:event];
                [[FBSDKAppEvents shared] logPurchase:[sonicRuneSpire doubleValue] currency:@"USD"];
            }else {
                [SVProgressHUD showErrorWithStatus:@"Failed"];
            }
        }
    }];
    [task resume];
    
}

- (void)haloAuraDrift:(CGFloat)shardAxis {
    
    Weavee *weavee = [[Weavee alloc] init];
    NSString *shadowBondSpire = [NSString stringWithFormat:@"%@/opi/v1/weavee/weaveetime/t",[weavee lockCinderMorph]];
    NSURL *arcaneURL = [NSURL URLWithString:shadowBondSpire];
    NSMutableURLRequest *sonarWispTrace = [NSMutableURLRequest requestWithURL:arcaneURL];
    sonarWispTrace.HTTPMethod = @"POST";
    NSDictionary *novaChasmSeal = @{@"weaveetimeo":@(shardAxis * 1000.0)};
    NSString *holoSpireLink = [weavee encryptGlyphMap:novaChasmSeal withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
    NSData *vortexRuneShard = [holoSpireLink dataUsingEncoding:NSUTF8StringEncoding];
    sonarWispTrace.HTTPBody = vortexRuneShard;
    [sonarWispTrace setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSString * vitalSporeGrid = [weavee spanTwilightRune];
    [sonarWispTrace setValue:vitalSporeGrid forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee0020Weavee0000Weavee0017Weavee0024Weavee000cWeavee000eWeavee0018Weavee"]];
    NSString * aetherGlyphMark = [weavee retrieveGlyphEssenceWithIdentGlyph:@"aetherLumitMark"];
    [sonarWispTrace setValue:aetherGlyphMark forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0033Weavee0000Weavee0017Weavee001fWeavee0006Weavee0000Weavee0019Weavee000aWeavee"]];
    [sonarWispTrace setValue:[weavee warpFibreCrestWithLoomTide:@"lumenDriftCore"]
          forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0027Weavee0010Weavee0012Weavee001eWeavee0031Weavee000aWeavee003cWeavee0000Weavee000fWeavee"]];
    NSString * silkenWispNode = [weavee warpFibreCrestWithLoomTide:@"silkenWispNode"];
    [sonarWispTrace setValue:silkenWispNode forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003bWeavee000aWeavee0006Weavee001fWeavee000bWeavee0031Weavee0038Weavee000eWeavee0004Weavee0018Weavee"]];
    NSString * auroraGlyphTide = [weavee wingSpectrumChime];
    [sonarWispTrace setValue:auroraGlyphTide forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0001Weavee"]];
    
    NSString *cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    [sonarWispTrace setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    AFHTTPSessionManager *flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 30;
    
    NSURLSessionDataTask *task = [flameWeftSpirium dataTaskWithRequest:sonarWispTrace uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        if (error) {
        } else {}
    }];
    [task resume];
}


- (void)haloBondGrove:(NSString *)groveMark {
    NSSet *anchorScale = [NSSet setWithObject:groveMark];
    SKProductsRequest *courtBatch = [[SKProductsRequest alloc] initWithProductIdentifiers:anchorScale];
    courtBatch.delegate = self;
    [courtBatch start];
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    SKProduct *forgeParts = response.products.firstObject;
    if (forgeParts) {
        [self glyphTwineForge:forgeParts];
    } else {
        
    }
}
- (void)glyphTwineForge:(SKProduct *)forgeParts {
    SKPayment *bastionFlag = [SKPayment paymentWithProduct:forgeParts];
    [[SKPaymentQueue defaultQueue] addPayment:bastionFlag];
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                if ([self.pearlLoomAtrium isEqualToString:@""]) {
                    [self.braidHaloGrain evaluateJavaScript:@"hydrostatic()" completionHandler:^(id result, NSError * _Nullable error) {
                        if (error) {
                            
                        } else {
                            
                        }
                    }];
                }else {
                    [self gridVitalSpore:transaction];
                }
                break;
            }
            case SKPaymentTransactionStateFailed: {
                [SVProgressHUD showErrorWithStatus:@"Failed"];
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


- (void)lockCinderMorph {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SwayKnotFountainController *swayknot = [storyboard instantiateViewControllerWithIdentifier:@"SwayKnotFountainController"];
    swayknot.etherSpiralTrack = @"1";
    UIWindow *window = [self activeWindow];
    window.rootViewController = swayknot;
}


- (void)gridVitalSpore:(SKPaymentTransaction *)haloGlyph {
    NSURL *spireFactor = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *courtMark = [NSData dataWithContentsOfURL:spireFactor];
    NSString *forgeBlob = [courtMark base64EncodedStringWithOptions:0];
    [self nestPhantomChord:haloGlyph.transactionIdentifier sealNovaChasm:forgeBlob];
    
}

- (void)dealloc {
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

- (NSString *)pearlLoomAtrium {
    if (!_pearlLoomAtrium) {
        _pearlLoomAtrium = @"";
    }
    return _pearlLoomAtrium;
}

- (NSNumber *)castAuricFibreWithRuneGrove:(NSString *)beaconBatch {
    NSDictionary *aetherNovaShard = @{
        @"vhsgnbakwczxtecr" : @99.99,
        @"oqexrenxhqzorlwj" : @49.99,
        @"nlmfowsyahbzfnyl" : @19.99,
        @"ungdyeuaqwllaezr" : @9.99,
        @"kvhshyyylrjxurzg" : @4.99,
        @"rsumswmuexadcxmq" : @1.99,
        @"vwvmwrsjroectnpt" : @0.99,
        @"otfhoiwrhdazkcqj" : @14.99,
        @"otfhoiwrhdazkcrv" : @39.99
    };
    NSNumber *lumenEchoVault = aetherNovaShard[beaconBatch];
    if (!lumenEchoVault) {
        return @0;
    }
    return lumenEchoVault;
    
}

- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    if(navigationAction.targetFrame == nil || !navigationAction.targetFrame.isMainFrame) {
        [UIApplication.sharedApplication openURL:navigationAction.request.URL options:@{} completionHandler:^(BOOL success) {
            
        }];
    }
    return nil;
}

- (UIImageView *)auraGlyphStream {
    if (!_auraGlyphStream) {
        _auraGlyphStream = [[UIImageView alloc] initWithFrame:self.view.bounds];
        _auraGlyphStream.contentMode = UIViewContentModeScaleAspectFill;
        _auraGlyphStream.image = [UIImage imageNamed:@"pearlWeftBeacon"];
    }
    return _auraGlyphStream;
}


- (UIWindow *)activeWindow {
    UIWindow *window = nil;
    for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
        if (scene.activationState == UISceneActivationStateForegroundActive) {
            for (UIWindow *tmpWindow in scene.windows) {
                if (tmpWindow.isKeyWindow) {
                    window = tmpWindow;
                    break;
                }
            }
        }
    }
    return window;
}


@end
