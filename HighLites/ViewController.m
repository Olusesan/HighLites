//
//  ViewController.m
//  HighLites
//
//  Created by Olusesan Ajina on 10/28/14.
//  Copyright (c) 2014 Olusesan Ajina. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController
@synthesize videoUrl;
@synthesize moviePlayer;

- (void)viewDidLoad {
    videoUrl = [NSURL URLWithString:[NSString stringWithFormat:@"http://movies.apple.com/media/us/mac/getamac/2009/apple-mvp-biohazard_suit-us-20090419_480x272.mov"]];
    if(videoUrl) {
        
        if([videoUrl scheme]) {
            
            [self playVideoStream:videoUrl];
        }
    }
}

-(void)playVideoStream:(NSURL *)movieFileURL {
    
    MPMovieSourceType movieSourceType = MPMovieSourceTypeUnknown;
    /* If we have a streaming url then specify the movie source type. */
    if ([[movieFileURL pathExtension] compare:@"mov" options:NSCaseInsensitiveSearch] == NSOrderedSame)
    {
        movieSourceType = MPMovieSourceTypeStreaming;
    }
    [self createAndPlayMovieForURL:movieFileURL sourceType:movieSourceType];
}

-(void)createAndPlayMovieForURL:(NSURL *)movieURL sourceType:(MPMovieSourceType)sourceType {
    
    /* Play the video! */
    [moviePlayer setMovieSourceType:sourceType];
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];;
    moviePlayer.view.frame = CGRectMake(10, 20, 280, 210);
    [self.view addSubview:moviePlayer.view];
    [moviePlayer play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated

    
    

    
}
@end
