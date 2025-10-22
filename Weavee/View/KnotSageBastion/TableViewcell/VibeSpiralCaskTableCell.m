//
//  VibeSpiralCaskTableCell.m
//  Weavee
//
//   
//

#import "VibeSpiralCaskTableCell.h"
//#import "SDWebImage.h"
#import "WeaveeToast.h"
#import "FlareWispHollowController.h"
#import "Weavee.h"

@interface VibeSpiralCaskTableCell()

@property (weak, nonatomic) IBOutlet UIImageView *auricSpireFlux;
@property (weak, nonatomic) IBOutlet UIImageView *braidHaloGrain;
@property (weak, nonatomic) IBOutlet UILabel *prismLoomShard;
@property (weak, nonatomic) IBOutlet UILabel *vortexRuneMantle;
@property (weak, nonatomic) IBOutlet UIView *echoWispCrest;
@property (weak, nonatomic) IBOutlet UILabel *glyphTideHarbor;
@property (weak, nonatomic) IBOutlet UIButton *pulseWeftHaven;

@property(nonatomic, copy)NSDictionary * anchorFlag;

@end

@implementation VibeSpiralCaskTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.layer.cornerRadius = 34;
    
    self.braidHaloGrain.layer.masksToBounds = YES;
    self.braidHaloGrain.layer.cornerRadius = 12;
    
    self.echoWispCrest.layer.masksToBounds = YES;
    self.echoWispCrest.layer.cornerRadius = 12;
    
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.auricSpireFlux.layer.cornerRadius = 34;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)gateTwineHallWithCrestAnchor:(NSDictionary *)anchorFlag {
    self.anchorFlag = anchorFlag;
    NSString * wardrobeStyling = [NSString stringWithFormat:@"%@", [anchorFlag objectForKey:@"wardrobeStyling"]];
//    [self.auricSpireFlux sd_setImageWithURL:[NSURL URLWithString:wardrobeStyling]];
    [Weavee loadImageFromURL:wardrobeStyling completion:^(UIImage * _Nonnull image) {
        self.auricSpireFlux.image = image;
    }];
    
    NSString * garmentConstruction = [NSString stringWithFormat:@"%@", [anchorFlag objectForKey:@"garmentConstruction"]];
    self.glyphTideHarbor.text = garmentConstruction;
    
    NSString * fashionIllustration = [NSString stringWithFormat:@"%@", [anchorFlag objectForKey:@"fashionIllustration"]];
//    [self.braidHaloGrain sd_setImageWithURL:[NSURL URLWithString:fashionIllustration]];
    [Weavee loadImageFromURL:fashionIllustration completion:^(UIImage * _Nonnull image) {
        self.braidHaloGrain.image = image;
    }];
    
    NSString * textileKnowledge = [NSString stringWithFormat:@"%@", [anchorFlag objectForKey:@"textileKnowledge"]];
    self.prismLoomShard.text = textileKnowledge;
    
    NSString * colorPalette = [NSString stringWithFormat:@"%@", [anchorFlag objectForKey:@"colorPalette"]];
    self.vortexRuneMantle.text = colorPalette;
}


- (IBAction)scanHaloForgeWithWeftCitadel:(UIButton *)sender {
    
    UIAlertController * mistChordGrove = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * silverTwineForge = [UIAlertAction actionWithTitle:@"Report" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self lunarVeilRefract];
    }];
    
    UIAlertAction * charmFibreAtrium = [UIAlertAction actionWithTitle:@"Block" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self arcaneBloomInvert];
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [mistChordGrove addAction:silverTwineForge];
    [mistChordGrove addAction:charmFibreAtrium];
    [mistChordGrove addAction:cancel];
    
    [[self findOwningController] presentViewController:mistChordGrove animated:YES completion:nil];
}

- (IBAction)alignWispVaultWithSwayGrove:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSDictionary * anchorNodes = self.anchorFlag;
    if (anchorNodes.count <= 0) {
        return;
    }
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"seasonalTrends"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0001Weavee000cWeavee0005Weavee0013Weavee000aWeavee0021Weavee0032Weavee0011Weavee0000Weavee001fWeavee0009Weavee0016Weavee0078Weavee000cWeavee000fWeavee0012Weavee0000Weavee001dWeavee0068Weavee0001Weavee0018Weavee0018Weavee0004Weavee0008Weavee003eWeavee0006Weavee0028Weavee0012Weavee0058Weavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
}




-(void)lunarVeilRefract {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0025Weavee0000Weavee0011Weavee0019Weavee0017Weavee0011Weavee0078Weavee000cWeavee000fWeavee0012Weavee0000Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
}


-(void)arcaneBloomInvert {
    if (self.anchorFlag.count <= 0) {
        return;
    }
    
    NSString * fabricGuide = [NSString stringWithFormat:@"%@", [self.anchorFlag objectForKey:@"fabricGuide"]];
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [self.anchorFlag objectForKey:@"seasonalTrends"]];
    NSDictionary * courtBlob = @{@"celebrityFashion":@"2",@"fashionCollaboration":seasonalTrends, @"visualStyling":fabricGuide};
    [self twistAuricLatticeWithEchoShard:courtBlob];
    
}

-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/psmatodwgwfwrewz/vunfwuqbzajoc", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    
    [self calculateResponseVelocityForThread:shadowBondSpire withParams:courtBlob completion:^(NSDictionary *respons) {
        if (respons.count > 0) {
            NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",respons[@"code"]];
            if ([runeVeilFountain isEqualToString:@"200000"]) {
                [WeaveeToast showText:@"Success" imageName:@"checkmark.circle.fill" time:1.5];
                NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [self.anchorFlag objectForKey:@"seasonalTrends"]];
                if ([self.delegate respondsToSelector:@selector(galeCryptTwine:)]) {
                    [self.delegate galeCryptTwine:seasonalTrends];
                }
            }else {
                [WeaveeToast showText:@"Error" imageName:@"xmark.circle.fill" time:1.5];
            }
        }
    }];
    
}

- (NSMutableURLRequest *)injectContextBeaconIntoConversation:(Weavee *)weavee urlString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    return request;
}

- (void)calculateResponseVelocityForThread:(NSString *)urlString withParams:(NSDictionary *)params completion:(void (^)(NSDictionary *respons))completion {
    
    Weavee *weavee = [[Weavee alloc] init];
    NSString *cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    NSMutableURLRequest *request = [self injectContextBeaconIntoConversation:weavee urlString:urlString];
    [request addValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    [request addValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    NSData *body = [NSJSONSerialization dataWithJSONObject:params options:0 error:nil];
    request.HTTPBody = body;
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            if (completion) dispatch_async(dispatch_get_main_queue(), ^{
                completion(@{});
            });
            return;
        }
        
        if (data) {
            NSError *jsonError = nil;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(json ?: @{});
            });
        }
    }];
    [task resume];
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
