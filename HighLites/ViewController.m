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
@synthesize movieplayer;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [[NSURL alloc]initWithString:@"http://storage.googleapis.com/manc-vs-newctle/Manchester%20City%20vs%20Newcastle%20United%200-2-iphonepod.mp4"];
    
    movieplayer = [[MPMoviePlayerController alloc]initWithContentURL:url];
    
    [movieplayer.view setFrame:CGRectMake(30, 100, 380, 150)];
    
    [self.view addSubview:movieplayer.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated

    
    

    
}
@end
