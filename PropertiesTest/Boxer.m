//
//  Boxer.m
//  PropertiesTest
//
//  Created by Admin on 18.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "Boxer.h"

@interface Boxer ()

@property (assign, nonatomic) NSInteger nameCount;

@end

@implementation Boxer

//для одновременного использования геттера и сеттера
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
    }
    return self;
}

- (void) setName:(NSString *)name {
    
    NSLog(@"setter setName is called");
    _name = name;
}

- (NSString*) name {
    
    _nameCount++;
    NSLog(@"name getter is called %ld times", (long) _nameCount);
    
    return _name;
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    
    return _age;
}

- (NSInteger) howOldAreYou {
    return self.age;
}

@end
