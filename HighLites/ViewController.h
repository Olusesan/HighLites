//
//  ViewController.h
//  HighLites
//
//  Created by Olusesan Ajina on 10/28/14.
//  Copyright (c) 2014 Olusesan Ajina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) MPMoviePlayerController *moviePlayer;
@property (nonatomic, strong) NSURL *videoUrl;


@end

