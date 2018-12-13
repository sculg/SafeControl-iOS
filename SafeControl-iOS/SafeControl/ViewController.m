//
//  ViewController.m
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import "ViewController.h"
#import "SafeDefine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *  myStr = nil;
    
    NSArray *array = [NSArray safeArrayWithObject:myStr];
//    NSArray *array = [NSArray arrayWithObject:myStr];

    NSLog(@"%@",array);
//    NSArray *myArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4", nil];
    NSArray *myArray = [NSArray arrayWithObjects:@1,@2,@3,@4, nil];

    [myArray safeObjectAtIndex:myArray.count];
//    [myArray objectAtIndex:myArray.count];
    
//    myStr = [myArray safeStringAtIndex:myArray.count];
//    myStr = [myArray safeStringAtIndex:myArray.count-1];


    NSMutableArray *mutaArray = [NSMutableArray arrayWithObjects:@1,@2,@3,@4, nil];
//    [mutaArray addObject:myStr];
//    [mutaArray removeObjectAtIndex:mutaArray.count];
    [mutaArray safeRemoveObjectAtIndex:mutaArray.count];

    //    [mutaArray removeObjectAtIndex:mutaArray.count];
//        [mutaArray insertObject:myStr atIndex:mutaArray.count];
//    [mutaArray safeInsertObject:@"5" atIndex:mutaArray.count-1];
    
//    [mutaArray replaceObjectAtIndex:mutaArray.count-1 withObject:@"5"];

    [mutaArray safeReplaceObjectAtIndex:mutaArray.count withObject:@"5"];
}


@end
