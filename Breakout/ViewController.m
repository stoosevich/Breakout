//
//  ViewController.m
//  Breakout
//
//  Created by Steve Toosevich on 3/20/14.
//  Copyright (c) 2014 Steve Toosevich. All rights reserved.
//

#import "ViewController.h"
#import "PaddleView.h"
#import "BallView.h"
#import "BlockView.h"

@interface ViewController () <UIGestureRecognizerDelegate>
{
    __weak IBOutlet BallView *ballView;
    __weak IBOutlet PaddleView *paddleView;
    IBOutlet UIView *bottomEdgeView;
    IBOutlet UIButton *launchButton;
    
    UIDynamicAnimator *dynamicAnimator;
    UIPushBehavior *pushBehavior;
    UICollisionBehavior *collisionBehavior;
    UIDynamicItemBehavior *paddleDynamicBehavior;
    UIDynamicItemBehavior *ballDynamicBehavior;
    UIDynamicItemBehavior *blockDynamicBehavior;
    UIGestureRecognizer *swipeUpToLaunch;
    NSMutableArray *arrayOfBlockViews;
  //  UIPanGestureRecognizer *panGestureRecognizer;
    
    BlockView *block1;
    BlockView *block2;
    BlockView *block3;
    BlockView *block4;
    BlockView *block5;
    BlockView *block6;
    BlockView *block7;
    BlockView *block8;
    BlockView *block9;
    BlockView *block10;
    BlockView *block11;
    BlockView *block12;
    BlockView *block13;
    BlockView *block14;
    BlockView *block15;
    BlockView *block16;
    BlockView *block17;
    BlockView *block18;
    BlockView *block19;
    BlockView *block20;
    BlockView *block21;
    BlockView *block22;
    BlockView *block23;
    BlockView *block24;
    BlockView *block25;
    BlockView *block26;
    BlockView *block27;
    BlockView *block28;
}
@property (strong, nonatomic) UIPushBehavior *p;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    paddleView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"paddle70x20"]];
    
    ballView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"steampunk_clock15x15"]];
    
    block1 = [[BlockView alloc] initWithFrame:CGRectMake(40, 80, 30, 20)];
    [block1 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block1];
    
    block2 = [[BlockView alloc] initWithFrame:CGRectMake(75, 80, 30, 20)];
    [block2 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block2];
    
    block3 = [[BlockView alloc] initWithFrame:CGRectMake(110, 80, 30, 20)];
    [block3 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block3];

    block4 = [[BlockView alloc] initWithFrame:CGRectMake(145, 80, 30, 20)];
    [block4 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block4];

    block5 = [[BlockView alloc] initWithFrame:CGRectMake(180, 80, 30, 20)];
    [block5 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block5];

    block6 = [[BlockView alloc] initWithFrame:CGRectMake(215, 80, 30, 20)];
    [block6 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block6];

    block7 = [[BlockView alloc] initWithFrame:CGRectMake(250, 80, 30, 20)];
    [block7 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block7];

    block8 = [[BlockView alloc] initWithFrame:CGRectMake(40, 105, 30, 20)];
    [block8 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block8];
    
    block9 = [[BlockView alloc] initWithFrame:CGRectMake(75, 105, 30, 20)];
    [block9 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block9];
    
    block10 = [[BlockView alloc] initWithFrame:CGRectMake(110, 105, 30, 20)];
    [block10 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block10];
    
    block11 = [[BlockView alloc] initWithFrame:CGRectMake(145, 105, 30, 20)];
    [block11 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block11];
    
    block12 = [[BlockView alloc] initWithFrame:CGRectMake(180, 105, 30, 20)];
    [block12 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block12];
    
    block13 = [[BlockView alloc] initWithFrame:CGRectMake(215, 105, 30, 20)];
    [block13 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block13];
    
    block14 = [[BlockView alloc] initWithFrame:CGRectMake(250, 105, 30, 20)];
    [block14 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block14];
    
    block15 = [[BlockView alloc] initWithFrame:CGRectMake(40, 130, 30, 20)];
    [block15 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block15];
    
    block16 = [[BlockView alloc] initWithFrame:CGRectMake(75, 130, 30, 20)];
    [block16 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block16];
    
    block17 = [[BlockView alloc] initWithFrame:CGRectMake(110, 130, 30, 20)];
    [block17 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block17];
    
    block18 = [[BlockView alloc] initWithFrame:CGRectMake(145, 130, 30, 20)];
    [block18 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block18];
    
    block19 = [[BlockView alloc] initWithFrame:CGRectMake(180, 130, 30, 20)];
    [block19 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block19];
    
    block20 = [[BlockView alloc] initWithFrame:CGRectMake(215, 130, 30, 20)];
    [block20 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block20];
    
    block21 = [[BlockView alloc] initWithFrame:CGRectMake(250, 130, 30, 20)];
    [block21 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block21];
    
    block22 = [[BlockView alloc] initWithFrame:CGRectMake(40, 155, 30, 20)];
    [block22 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block22];
    
    block23 = [[BlockView alloc] initWithFrame:CGRectMake(75, 155, 30, 20)];
    [block23 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block23];
    
    block24 = [[BlockView alloc] initWithFrame:CGRectMake(110, 155, 30, 20)];
    [block24 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block24];
    
    block25 = [[BlockView alloc] initWithFrame:CGRectMake(145, 155, 30, 20)];
    [block25 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block25];
    
    block26 = [[BlockView alloc] initWithFrame:CGRectMake(180, 155, 30, 20)];
    [block26 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block26];
    
    block27 = [[BlockView alloc] initWithFrame:CGRectMake(215, 155, 30, 20)];
    [block27 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block27];
    
    block28 = [[BlockView alloc] initWithFrame:CGRectMake(250, 155, 30, 20)];
    [block28 setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"block30x20"]]];
    [self.view addSubview:block28];
    

    arrayOfBlockViews = [NSMutableArray new];
	dynamicAnimator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
   // pushBehavior = [[UIPushBehavior alloc]initWithItems:@[ballView] mode:UIPushBehaviorModeInstantaneous];
    collisionBehavior = [[UICollisionBehavior alloc]initWithItems:@[ballView, paddleView, block1, block2, block3, block4, block5, block6, block7, block8, block9, block10, block10, block11, block12,block13, block14, block15, block16, block17, block18, block19, block20, block21, block22, block23, block24, block25, block26, block27, block28]];
    paddleDynamicBehavior = [[UIDynamicItemBehavior alloc]initWithItems:@[paddleView]];
    ballDynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[ballView]];
    blockDynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:arrayOfBlockViews];
    
    //Collision Behavior
    collisionBehavior.collisionMode = UICollisionBehaviorModeEverything;
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    collisionBehavior.collisionDelegate = self;
    [dynamicAnimator addBehavior:collisionBehavior];
    
    //Paddle Behavior
    paddleDynamicBehavior.elasticity = 1.2;
    paddleDynamicBehavior.allowsRotation = NO;
    paddleDynamicBehavior.density = 4000;
    [dynamicAnimator addBehavior:paddleDynamicBehavior];
    
    // Ball Behavior
    ballDynamicBehavior.allowsRotation = NO;
    ballDynamicBehavior.elasticity = 1.03;
    ballDynamicBehavior.friction = 0.0;
    ballDynamicBehavior.resistance = 0.0;
    ballDynamicBehavior.density = 0.1;
    [dynamicAnimator addBehavior:ballDynamicBehavior];
    
    // Block Behavior
    blockDynamicBehavior.elasticity = 1.2;
    blockDynamicBehavior.resistance = 0.0;
    blockDynamicBehavior.friction = 0.0;
    blockDynamicBehavior.density = 4000;
    
    
    [collisionBehavior addBoundaryWithIdentifier:@"topWall" fromPoint:CGPointMake(0, 0) toPoint:CGPointMake(self.view.frame.size.width ,0 )];
    [collisionBehavior addBoundaryWithIdentifier:@"leftwall" fromPoint:CGPointZero toPoint:CGPointMake(0, self.view.frame.size.height)];
    [collisionBehavior addBoundaryWithIdentifier:@"rightwall" fromPoint:CGPointMake(self.view.frame.size.width, 0) toPoint:CGPointMake(self.view.frame.size.width, self.view.frame.size.height)];
    
//moving the ball
//    pushBehavior.pushDirection = CGVectorMake(0.4, -1.0);
//    pushBehavior.active = YES;
//    pushBehavior.magnitude = 0.03;
//    [dynamicAnimator addBehavior:pushBehavior];
    
    arrayOfBlockViews = [NSMutableArray arrayWithObjects:block1, block2, block3, block4, block5, block6, block7, block8, block9, block10, block10, block11, block12,block13, block14, block15, block16, block17, block18, block19, block20, block21, block22, block23, block24, block25, block26, block27, block28,nil];
}

-(IBAction)dragPaddle:panGestureRecognizer
{
    paddleView.center = CGPointMake([panGestureRecognizer locationInView:self.view].x, paddleView.center.y);
//    ballView.center = CGPointMake([panGestureRecognizer locationInView:self.view].x, ballView.center.y);
    
    [dynamicAnimator updateItemUsingCurrentState:paddleView];
//    [dynamicAnimator updateItemUsingCurrentState:ballView];

}

// When ball goes off bottom of the screen.
-(void) collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p
{
    NSLog(@"%f %f", [ballDynamicBehavior linearVelocityForItem:ballView].x,[ballDynamicBehavior linearVelocityForItem:ballView].y);
    
    if(ballView.center.y > bottomEdgeView.center.y)
    {
        //ballView.center = self.view.center;
        ballView.center = CGPointMake(paddleView.center.x, paddleView.center.y -10);
        CGPoint ballVelocity = CGPointMake([ballDynamicBehavior linearVelocityForItem:ballView].x * -1,
                                           [ballDynamicBehavior linearVelocityForItem:ballView].y * -1);
        [ballDynamicBehavior addLinearVelocity:ballVelocity forItem:ballView];

    }
    [dynamicAnimator updateItemUsingCurrentState:ballView];

}

-(void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item1 withItem:(id<UIDynamicItem>)item2 atPoint:(CGPoint)p
{
    if ([item2 isKindOfClass:[BlockView class]])
    {
        [collisionBehavior removeItem:item2];
        [arrayOfBlockViews removeObject:item2];
        [(BlockView *)item2 removeFromSuperview];
        [dynamicAnimator updateItemUsingCurrentState:item2];
    }
    if ([arrayOfBlockViews count] == 0)
    {
        [dynamicAnimator removeAllBehaviors];
        //[dynamicAnimator removeBehavior:ballDynamicBehavior];
        ballView.center = self.view.center;
        [self shouldStartAgain];

    }
    
    
}

-(BOOL) shouldStartAgain
{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"You Win!" message:@"Try Again?" delegate:self cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [alertView show];
    return TRUE;
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        ballView.center = CGPointMake(paddleView.center.x, paddleView.center.y -10);
   
        [self viewDidLoad];
    }
}


//- (IBAction)swipeUpToLaunch:(UISwipeGestureRecognizer*)sender
//{
// 
//    dynamicAnimator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
//    pushBehavior = [[UIPushBehavior alloc]initWithItems:@[ballView] mode:UIPushBehaviorModeInstantaneous];
//    collisionBehavior = [[UICollisionBehavior alloc]initWithItems:@[ballView, paddleView,blockView]];
//    paddleDynamicBehavior = [[UIDynamicItemBehavior alloc]initWithItems:@[paddleView]];
//    ballDynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[ballView]];
//    
//    collisionBehavior.collisionMode = UICollisionBehaviorModeEverything;
//    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
//    collisionBehavior.collisionDelegate = self;
//    [dynamicAnimator addBehavior:collisionBehavior];
//    
//    
//    
//    //moving the paddle
//    paddleDynamicBehavior.allowsRotation = NO;
//    paddleDynamicBehavior.density = 2000;
//    [dynamicAnimator addBehavior:paddleDynamicBehavior];
//    
//    //moving the ball
//    pushBehavior.pushDirection = CGVectorMake(0.5, -1.0);
//    pushBehavior.active = YES;
//    pushBehavior.magnitude = 0.05;
//    [dynamicAnimator addBehavior:pushBehavior];
//    
//    // Ball Behavior
//    ballDynamicBehavior.allowsRotation = NO;
//    ballDynamicBehavior.elasticity = 1.0;
//    ballDynamicBehavior.friction = 0.0;
//    ballDynamicBehavior.resistance = 0.0;
//    ballDynamicBehavior.density = 1;
//    [dynamicAnimator addBehavior:ballDynamicBehavior];
//}


- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
    
    if ([(NSString*)identifier isEqualToString:@"topWall"])
    {
        [self.p setPushDirection:CGVectorMake(-0.6, 1.8)];
        [self.p setActive:YES];
        NSLog(@"wall");
    }
    else if ([(NSString*)identifier isEqualToString:@"leftwall"]) {
        [self.p setPushDirection:CGVectorMake(0.6, -0.3)];
        [self.p setActive:YES];
        NSLog(@"wall");
    }
    else if ([(NSString*)identifier isEqualToString:@"rightwall"]) {
        [self.p setPushDirection:CGVectorMake(-0.6, -0.3)];
        [self.p setActive:YES];
        NSLog(@"wall");
    }
//    else
//    {
//        [self.p setPushDirection:CGVectorMake(-0.1, -0.1)];
//        [self.p setActive:YES];
//        NSLog(@"wall");
//    }

}



- (IBAction)launchButton:(UIButton*)sender
{
        pushBehavior.pushDirection = CGVectorMake(0.4, -1.0);
        pushBehavior.active = YES;
        pushBehavior.magnitude = 0.02;
        [dynamicAnimator addBehavior:pushBehavior];
    CGPoint ballVelocity = CGPointMake(223, -365);
    [ballDynamicBehavior addLinearVelocity:ballVelocity forItem:ballView];
    [dynamicAnimator updateItemUsingCurrentState:ballView];

}


@end
