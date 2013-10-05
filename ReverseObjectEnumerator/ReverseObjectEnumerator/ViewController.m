//
//  ViewController.m
//  ReverseObjectEnumerator
//
//  Created by navzou on 10/5/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self main];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)main
{
    NSArray *myArray = [NSArray arrayWithObjects:
                        @"Apple",
                        @"Banana",
                        @"Orange", nil];
    
    NSOrderedSet *orderedSet;
    orderedSet = [NSOrderedSet orderedSetWithArray:myArray];
    
    NSEnumerator *enumerator = [myArray reverseObjectEnumerator];
    id value;
    
    NSLog(@"From myArray");
    while (value = [enumerator nextObject]) {
        NSLog(@"%@", value);
    }
    
    enumerator = [orderedSet reverseObjectEnumerator];
    
    NSLog(@"From orderedSet");
    while (value = [enumerator nextObject]) {
        NSLog(@"%@", value);
    }
}

@end
