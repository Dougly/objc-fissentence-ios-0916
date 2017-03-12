//
//  FISSentence.m
//  objc-fissentence
//
//  Created by Douglas Galante on 3/12/17.
//  Copyright © 2017 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISSentence.h"

@interface FISSentence ()

@property (strong, readwrite) NSString *sentence;

@end



@implementation FISSentence

-(void)assembleSentence {
    
}

-(BOOL)validWord:(NSString *)word {
    return NO;
}

-(BOOL)validPunctuation:(NSString *)punctuation {
    return NO;
}

-(BOOL)validIndex:(NSUInteger)index {
    return NO;
}

-(void)addWord:(NSString *)word {
    
}

-(void)addWords:(NSString *)word withPunctuation:(NSString *)punctuation {
    
}

-(void)removeWordAtIndex:(NSUInteger)index {
    
}

-(void)insertWord:(NSString *)word atIndex:(NSUInteger)index {
    
}

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation {
    
}

-(void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString *)word {
    
}
@end









