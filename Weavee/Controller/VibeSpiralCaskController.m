//
//  VibeSpiralCaskController.m
//  Weavee
//
//   
//

#import "VibeSpiralCaskController.h"
#import "VibeSpiralCaskTableCell.h"
#import "Weavee.h"
#import "LinkFibreCascadeController.h"
#import "FlareWispHollowController.h"

@interface VibeSpiralCaskController ()<UITableViewDelegate, UITableViewDataSource,VibeSpiralCaskTableCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *frostSpiralCourt;

@property(nonatomic, copy)NSArray * lunarSwayBastion;

@end

@implementation VibeSpiralCaskController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self liftTwineHavenWithCrestBeacon];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    __weak typeof(self) weakSelf = self;
//    self.frostSpiralCourt.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        [weakSelf latticeFrostConverge];
//    }];
//    [self.frostSpiralCourt.mj_header beginRefreshing];
    
    [self latticeFrostConverge];
}

-(void)liftTwineHavenWithCrestBeacon {
    [self.frostSpiralCourt registerNib:[UINib nibWithNibName:@"VibeSpiralCaskTableCell" bundle:nil] forCellReuseIdentifier:@"VibeSpiralCaskTableCell"];
    self.frostSpiralCourt.delegate = self;
    self.frostSpiralCourt.dataSource = self;
    
}

-(void)galeCryptTwine:(NSString *)aetherBloom {
//    [self.frostSpiralCourt.mj_header beginRefreshing];
    [self latticeFrostConverge];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.lunarSwayBastion.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VibeSpiralCaskTableCell * cell = [tableView dequeueReusableCellWithIdentifier:@"VibeSpiralCaskTableCell"];
    cell.delegate = self;
    NSDictionary * anchorFlag = [self.lunarSwayBastion objectAtIndex:indexPath.row];
    [cell gateTwineHallWithCrestAnchor:anchorFlag];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSDictionary * anchorNodes = [self.lunarSwayBastion objectAtIndex:indexPath.row];
    if (anchorNodes.count <= 0) {
        return;
    }
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"seasonalTrends"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0001Weavee000cWeavee0005Weavee0013Weavee000aWeavee0021Weavee0032Weavee0011Weavee0000Weavee001fWeavee0009Weavee0016Weavee0078Weavee000cWeavee000fWeavee0012Weavee0000Weavee001dWeavee0068Weavee0001Weavee0018Weavee0018Weavee0004Weavee0008Weavee003eWeavee0006Weavee0028Weavee0012Weavee0058Weavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}


- (IBAction)grindLoomForgeWithWeftSpire:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [self.navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee000bWeavee0007Weavee0019Weavee0017Weavee0008Weavee0036Weavee0011Weavee0008Weavee0019Weavee000bWeavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}

- (IBAction)scanHaloForgeWithWeftCitadel:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [self.navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee0016Weavee0012Weavee0003Weavee0000Weavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}

- (void)latticeFrostConverge {
    NSDictionary * courtBlob = @{@"fashionMoodBoard":@"2",@"outfitIdeas":@"2"};
    [self twistAuricLatticeWithEchoShard:courtBlob];
}

-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    
    Weavee * weavee = [[Weavee alloc] init];
//    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
//    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
//    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
//    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
//    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
//    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
//    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lradjzpzbpxz/sbmfbyal", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
//    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
//        if ([runeVeilFountain isEqualToString:@"200000"]) {
//            self.lunarSwayBastion = responseObject[@"data"];
//            [self.frostSpiralCourt reloadData];
//        }
////        [self.frostSpiralCourt.mj_header endRefreshing];
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
////        [self.frostSpiralCourt.mj_header endRefreshing];
//    }];
    
    [self calculateResponseVelocityForThread:shadowBondSpire withParams:courtBlob completion:^(NSDictionary *respons) {
        if (respons.count > 0) {
            NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",respons[@"code"]];
            if ([runeVeilFountain isEqualToString:@"200000"]) {
                self.lunarSwayBastion = respons[@"data"];
                [self.frostSpiralCourt reloadData];
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



-(NSArray *)lunarSwayBastion {
    if (!_lunarSwayBastion) {
        _lunarSwayBastion = @[];
    }
    return _lunarSwayBastion;
}



@end
