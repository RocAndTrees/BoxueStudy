//
//  ViewController.m
//  Dispatch_OC_Test
//
//  Created by pxl on 2017/12/19.
//  Copyright © 2017年 yunbo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self serialSync];
    [self serialAsync];
}

- (void)serialSync
{
    dispatch_queue_t queue1 = dispatch_queue_create("com.ittmom1.www", NULL);
    dispatch_queue_t queue2 = dispatch_queue_create("com.ittmom2.www", NULL);
    dispatch_sync(queue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    
    dispatch_sync(queue1, ^{
        for (NSInteger i = 100; i < 110; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_sync(queue2, ^{
        for (NSInteger i = 1000; i < 1010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_sync(queue2, ^{
        for (NSInteger i = 10000; i < 10010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
}

- (void)serialAsync
{
    dispatch_queue_t queue1 = dispatch_queue_create("com.ittmom1.www", NULL);
    dispatch_queue_t queue2 = dispatch_queue_create("com.ittmom2.www", NULL);
    dispatch_async(queue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    
    dispatch_async(queue1, ^{
        for (NSInteger i = 100; i < 110; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_async(queue2, ^{
        for (NSInteger i = 1000; i < 1010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_async(queue2, ^{
        for (NSInteger i = 10000; i < 10010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
}

- (void)concurrentSync
{
    dispatch_queue_t queue1 = dispatch_queue_create("com.ittmom1.www", DISPATCH_QUEUE_CONCURRENT);
    dispatch_queue_t queue2 = dispatch_queue_create("com.ittmom2.www", DISPATCH_QUEUE_CONCURRENT);
    dispatch_sync(queue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    
    dispatch_sync(queue1, ^{
        for (NSInteger i = 100; i < 110; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_sync(queue2, ^{
        for (NSInteger i = 1000; i < 1010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_sync(queue2, ^{
        for (NSInteger i = 10000; i < 10010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
}


- (void)concurrentaSync
{
    dispatch_queue_t queue1 = dispatch_queue_create("com.ittmom1.www", DISPATCH_QUEUE_CONCURRENT);
    dispatch_queue_t queue2 = dispatch_queue_create("com.ittmom2.www", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    
    dispatch_async(queue1, ^{
        for (NSInteger i = 100; i < 110; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_async(queue2, ^{
        for (NSInteger i = 1000; i < 1010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
    
    dispatch_async(queue2, ^{
        for (NSInteger i = 10000; i < 10010; i++) {
            NSLog(@"🔴 %ld %@", (long)i,[NSThread currentThread]);
        }
    });
}



@end
