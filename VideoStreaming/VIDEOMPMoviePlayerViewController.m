//
//  VIDEOMPMoviePlayerViewController.m
//  VideoStreaming
//
//  Created by Uttam on 23/04/14.
//  Copyright (c) 2014 Uttam. All rights reserved.
//

#import "VIDEOMPMoviePlayerViewController.h"

@interface VIDEOMPMoviePlayerViewController ()
@property (strong, nonatomic) MPMoviePlayerController *streamPlayer;
@end

@implementation VIDEOMPMoviePlayerViewController

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
    self.title=@"MPMoviePlayer";
    /* NSURL *streamURL = [NSURL URLWithString:@"http://www.thumbafon.com/code_examples/video/segment_example/prog_index.m3u8"]; */
    NSURL *streamURL = [NSURL URLWithString:@"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
    _streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];
    
    // depending on your implementation your view may not have it's bounds set here
    // in that case consider calling the following 4 msgs later
    [self.streamPlayer.view setFrame: self.view.bounds];
    
    self.streamPlayer.controlStyle = MPMovieControlStyleEmbedded;
    
    [self.view addSubview: self.streamPlayer.view];
    
    [self.streamPlayer play];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
