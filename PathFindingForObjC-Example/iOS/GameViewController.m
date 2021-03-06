//
//  GameViewController.m
//  PathFindingForObjC-Example
//
//  Created by JasioWoo on 14/10/28.
//  Copyright (c) 2014年 JasioWoo. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
	skView.showsDrawCount = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
	
    // Create and configure the scene.
	CGSize viewSize = self.view.bounds.size;
	viewSize.width *= 2;
	viewSize.height *= 2;
	GameScene *scene = [[GameScene alloc] initWithSize:viewSize];
	scene.scaleMode = SKSceneScaleModeFill;
	
    // Present the scene.
    [skView presentScene:scene];
}




- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
