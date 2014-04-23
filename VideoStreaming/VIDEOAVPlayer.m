//
//  VIDEOAVPlayer.m
//  VideoStreaming
//
//  Created by Uttam on 23/04/14.
//  Copyright (c) 2014 Uttam. All rights reserved.
//

#import "VIDEOAVPlayer.h"

@interface VIDEOAVPlayer ()
//@property (strong, nonatomic) AVPlayer *avPlayer;
@end

@implementation VIDEOAVPlayer

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"AVPlayer";
    NSURL *streamURL = [NSURL URLWithString:@"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
    AVURLAsset *avAsset = [AVAsset assetWithURL:streamURL];
    AVPlayerItem *avPlayerItem =[[AVPlayerItem alloc]initWithAsset:avAsset];
    AVPlayer *avPlayer = [[AVPlayer alloc]initWithPlayerItem:avPlayerItem];
    AVPlayerLayer *avPlayerLayer =[AVPlayerLayer playerLayerWithPlayer:avPlayer];
    [avPlayerLayer setFrame:self.view.frame];
    [self.view.layer addSublayer:avPlayerLayer];
    //[avPlayerLayer setBackgroundColor:[[UIColor redColor]CGColor]];
    [avPlayer seekToTime:kCMTimeZero];
    [avPlayer play];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
