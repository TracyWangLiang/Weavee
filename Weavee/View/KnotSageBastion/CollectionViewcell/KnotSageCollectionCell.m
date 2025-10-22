//
//  KnotSageCollectionCell.m
//  Weavee
//
//   
//

#import "KnotSageCollectionCell.h"
#import "Weavee.h"
#import "WeaveeToast.h"
#import "LinkFibreCascadeController.h"

@interface KnotSageCollectionCell()

@property (weak, nonatomic) IBOutlet UIView *auricSpireFlux;
@property (weak, nonatomic) IBOutlet UIView *braidHaloGrain;
@property (weak, nonatomic) IBOutlet UIImageView *prismLoomShard;
@property (weak, nonatomic) IBOutlet UILabel *echoWispCrest;
@property (weak, nonatomic) IBOutlet UIButton *glyphTideAerie;

@property(nonatomic, copy)NSDictionary * anchorNodes;

@end

@implementation KnotSageCollectionCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.cornerRadius = 25;
    self.auricSpireFlux.layer.borderWidth = 1;
    self.auricSpireFlux.layer.borderColor = [[UIColor colorNamed:@"#5C1440"] CGColor];
    
    self.braidHaloGrain.layer.masksToBounds = YES;
    self.braidHaloGrain.layer.cornerRadius = 21;
    self.braidHaloGrain.layer.borderWidth = 1;
    self.braidHaloGrain.layer.borderColor = [[UIColor colorNamed:@"#8526AF"] CGColor];
    
    self.prismLoomShard.layer.masksToBounds = YES;
    self.prismLoomShard.layer.cornerRadius = 20;
    
}

- (IBAction)filterRuneHavenWithTideForge:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    if (self.anchorNodes.count <= 0) {
        return;
    }
    NSString * styleDiary = [NSString stringWithFormat:@"%@", [self.anchorNodes objectForKey:@"styleDiary"]];
    NSDictionary * courtBlob = @{@"celebrityFashion":@"1",@"visualStyling":styleDiary};
    [self twistAuricLatticeWithEchoShard:courtBlob];
}

- (void)traceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    self.anchorNodes = anchorNodes;
    NSString * trendAlert = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"trendAlert"]];
    self.echoWispCrest.text = trendAlert;
    NSString * streetStyle = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"streetStyle"]];
//    [self.prismLoomShard sd_setImageWithURL:[NSURL URLWithString:streetStyle] placeholderImage:[UIImage imageNamed:@"gleamBondSpire"]];
    [Weavee loadImageFromURL:streetStyle completion:^(UIImage * _Nonnull image) {
        self.prismLoomShard.image = image;
    }];
}

-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/psmatodwgwfwrewz/vunfwuqbzajoc", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [self calculateResponseVelocityForThread:shadowBondSpire withParams:courtBlob completion:^(NSDictionary *respons) {
        if (respons.count < 0) {
            NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",respons[@"code"]];
            if ([runeVeilFountain isEqualToString:@"200000"]) {
                [WeaveeToast showText:@"Success" imageName:@"checkmark.circle.fill" time:1.5];
            }else {
                [WeaveeToast showText:@"Error" imageName:@"xmark.circle.fill" time:1.5];
            }
        }
    }];
    
    
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




@end
