//
//  AuraKnotFountainView.m
//  Weavee
//
//   
//

#import "AuraKnotFountainView.h"
#import "SDWebImage.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "FlareWispHollowController.h"
#import "LinkFibreCascadeController.h"

@interface AuraKnotFountainView()
@property (weak, nonatomic) IBOutlet UIButton *vortexRuneMantle;

@property (weak, nonatomic) IBOutlet UIView *haloWeldHarbor;

@property (weak, nonatomic) IBOutlet UIView *emberLatticeSanctum;
@property (weak, nonatomic) IBOutlet UIImageView *lunarSwayBastion;

@property (weak, nonatomic) IBOutlet UILabel *frostSpiralCourt;
@property (weak, nonatomic) IBOutlet UILabel *duskBondCitadel;
@property (weak, nonatomic) IBOutlet UIView *charmFibreAtrium;


@property (weak, nonatomic) IBOutlet UILabel *silverTwineForge;
@property (weak, nonatomic) IBOutlet UILabel *mistChordGrove;
@property (weak, nonatomic) IBOutlet UILabel *flareKnotBeacon;


@property (weak, nonatomic) IBOutlet UILabel *pulseWeftHaven;
@property (weak, nonatomic) IBOutlet UILabel *glyphTideHarbor;
@property (weak, nonatomic) IBOutlet UILabel *echoWispCrest;

@property(nonatomic, assign)NSInteger auricSpireFlux;
@property(nonatomic, assign)NSInteger braidHaloGrain;
@property(nonatomic, assign)NSInteger prismLoomShard;


@end

@implementation AuraKnotFountainView

-(void)awakeFromNib {
    [super awakeFromNib];
    self.haloWeldHarbor.layer.masksToBounds = YES;
    self.haloWeldHarbor.layer.cornerRadius = 34;
    
    self.lunarSwayBastion.layer.masksToBounds = YES;
    self.lunarSwayBastion.layer.cornerRadius = 34;
    
    self.charmFibreAtrium.layer.masksToBounds = YES;
    self.charmFibreAtrium.layer.cornerRadius = 12;

    self.vortexRuneMantle.layer.masksToBounds = YES;
    self.vortexRuneMantle.layer.cornerRadius = 12;
    
    [self latticeFrostConverge];
    
}

- (IBAction)refineShadowSpireWithAuricRing:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0012Weavee0001Weavee0008Weavee0002Weavee0021Weavee0004Weavee0023Weavee0004Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];

    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
}
- (IBAction)filterLunarChordWithBondFountain:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0004Weavee0000Weavee0015Weavee0023Weavee0015Weavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];

    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
}

- (IBAction)prismChordAtrium:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0020Weavee0004Weavee000dWeavee001aWeavee0000Weavee0011Weavee0078Weavee000cWeavee000fWeavee0012Weavee0000Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];

    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
}



- (IBAction)composeDuskHaloWithRuneVault:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0036Weavee0011Weavee0015Weavee0013Weavee000bWeavee0011Weavee003eWeavee000aWeavee000fWeavee003aWeavee000cWeavee0016Weavee0023Weavee004aWeavee0008Weavee0018Weavee0001Weavee0000Weavee002fWeavee005aWeavee0015Weavee000fWeavee0015Weavee0000Weavee006aWeavee"]];
    NSString * pulseWeftHaven;
    if (sender.tag == 1000) {
        return;
    }else if (sender.tag == 1001) {
        pulseWeftHaven = @"2";
    }else {
        pulseWeftHaven = @"1";
    }
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,pulseWeftHaven,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];

    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
    
    
}
- (IBAction)scanEmberCrestWithFibreSpire:(UIButton *)sender {
    
    if (sender.tag == 1000) {
        
    }else if (sender.tag == 1001) {
        
    }else {
        
    }
    
}





- (void)latticeFrostConverge {
    Weavee * weavee = [[Weavee alloc] init];
    NSDictionary * vortexialLoomCast = [weavee refineShadowSpireWithAuricRing:@"vortexialLoomCast"];
    if (vortexialLoomCast.count <= 0) {
        self.lunarSwayBastion.image = [UIImage imageNamed:@"gleamBondSpire"];
        self.frostSpiralCourt.text = @"--";
        self.duskBondCitadel.text = @"--";
        return;
    }
    
    NSString * colorMatching = [NSString stringWithFormat:@"%@", [vortexialLoomCast objectForKey:@"colorMatching"]];
    [self.lunarSwayBastion sd_setImageWithURL:[NSURL URLWithString:colorMatching] placeholderImage:[UIImage imageNamed:@"gleamBondSpire"]];
    
    NSString * patternMixing = [NSString stringWithFormat:@"%@", [vortexialLoomCast objectForKey:@"patternMixing"]];
    self.frostSpiralCourt.text = patternMixing;
    
    NSString * textureCombination = [NSString stringWithFormat:@"%@", [vortexialLoomCast objectForKey:@"textureCombination"]];
    self.duskBondCitadel.text = textureCombination;
    if ([textureCombination isEqualToString:@""]) {
        self.duskBondCitadel.text = @"--";
    }
    
    NSString * styleCoordination = [NSString stringWithFormat:@"%@", [vortexialLoomCast objectForKey:@"styleCoordination"]];
    NSDictionary * courtBlob = @{@"fashionPackaging":styleCoordination};
    [self twistAuricLatticeWithEchoShard:courtBlob];
    
    NSDictionary * spiralCourtBlob = @{@"fashionMoodBoard":@"1",@"fashionBlogger":@"3",@"closetOrganization":@"2"};
    [self spiralWraithCompose:spiralCourtBlob];
    
    NSDictionary * crystalCourtBlob = @{@"designerCollaboration":@"83940001",@"fashionMerchandising":styleCoordination};
    [self crystalVaneMigrate:crystalCourtBlob];
    
}

- (void)emberDriftCascade:(NSDictionary *)courtBlob {
    NSString * styleConsistency = [NSString stringWithFormat:@"%@", [courtBlob objectForKey:@"styleConsistency"]];
    self.silverTwineForge.text = styleConsistency;
    
    NSString * styleAesthetic = [NSString stringWithFormat:@"%@", [courtBlob objectForKey:@"styleAesthetic"]];
    self.mistChordGrove.text = styleAesthetic;
    
    NSString * fashionMood = [NSString stringWithFormat:@"%@", [courtBlob objectForKey:@"fashionMood"]];
    self.flareKnotBeacon.text = fashionMood;
    
    NSString * fashionCommunityBuilding = [NSString stringWithFormat:@"%@", [courtBlob objectForKey:@"fashionCommunityBuilding"]];
    [self.lunarSwayBastion sd_setImageWithURL:[NSURL URLWithString:fashionCommunityBuilding] placeholderImage:[UIImage imageNamed:@"gleamBondSpire"]];
    
    NSString * fashionNetworking = [NSString stringWithFormat:@"%@", [courtBlob objectForKey:@"fashionNetworking"]];
    self.frostSpiralCourt.text = fashionNetworking;
    
}

-(void)gloomShardTranspose {
    NSString * auricSpireFluxStr = [NSString stringWithFormat:@"%ld", self.auricSpireFlux];
    self.pulseWeftHaven.text = auricSpireFluxStr;
    NSString * braidHaloGrainStr = [NSString stringWithFormat:@"%ld", self.braidHaloGrain];
    self.glyphTideHarbor.text = braidHaloGrainStr;
    NSString * prismLoomShardStr = [NSString stringWithFormat:@"%ld", self.prismLoomShard];
    self.echoWispCrest.text = prismLoomShardStr;
}

-(NSInteger)plasmaRuneFragment:(NSArray *)mantleBlob {
    if (mantleBlob.count <= 0) {
        return 0;
    }
    NSInteger retailStyling = 0;
    for (NSDictionary * havenMark in mantleBlob) {
        NSString * fashionSustainability = [NSString stringWithFormat:@"%@",[havenMark objectForKey:@"havenMark"]];
        if ([fashionSustainability isEqualToString:@"2"]) {
            retailStyling += 1;
        }
    }
    return retailStyling;
}


-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    Weavee * weavee = [[Weavee alloc] init];
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];

    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/wgwsfnaobzz/jaxoxagzj", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            NSDictionary * vortexialLoomCast = responseObject[@"data"];
            [self emberDriftCascade:vortexialLoomCast];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
    }];
}

-(void)spiralWraithCompose:(NSDictionary *)courtBlob {
    Weavee * weavee = [[Weavee alloc] init];
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];

    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lradjzpzbpxz/sbmfbyal", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            NSArray * haloWeldArcanum = responseObject[@"data"];
            self.auricSpireFlux = haloWeldArcanum.count;
            self.braidHaloGrain = [self plasmaRuneFragment:haloWeldArcanum];
            [self gloomShardTranspose];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
    }];
}

-(void)crystalVaneMigrate:(NSDictionary *)courtBlob {
    Weavee * weavee = [[Weavee alloc] init];
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];

    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lyajjksognkhz/whkryqmzrmwkjr", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            NSArray * haloWeldArcanum = responseObject[@"data"];
            self.prismLoomShard = haloWeldArcanum.count;
            [self gloomShardTranspose];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
    }];
}

-(NSInteger)auricSpireFlux {
    if (!_auricSpireFlux) {
        _auricSpireFlux = 0;
    }
    return _auricSpireFlux;
}
-(NSInteger)braidHaloGrain {
    if (!_braidHaloGrain) {
        _braidHaloGrain = 0;
    }
    return _braidHaloGrain;
}

-(NSInteger)prismLoomShard {
    if (!_prismLoomShard) {
        _prismLoomShard = 0;
    }
    return _prismLoomShard;
}

- (UIViewController *)findOwningController {
    UIResponder *responder = self.nextResponder;
    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = responder.nextResponder;
    }
    return nil;
}


@end
