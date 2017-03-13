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
//    for (NSUInteger i = 0; i < self.words.count; i++) {
//        if (i == self.words.count - 1) {
//            NSString *stringWithPunctuation = [NSString stringWithFormat:@" %@", self.punctuation];
//            self.sentence = [self.sentence stringByAppendingString:stringWithPunctuation];
//        } else if (i == 0) {
//            self.sentence = [self.sentence stringByAppendingString:self.words[i]];
//        }else {
//            NSString *stringWithSpace = [NSString stringWithFormat:@" %@", self.words[i]];
//            self.sentence = [self.sentence stringByAppendingString:stringWithSpace];
//            
//        }
//    }
    
    self.sentence = [self.words componentsJoinedByString:@" "];
    self.sentence = [self.sentence stringByAppendingString:self.punctuation];
}

-(BOOL)validWord:(NSString *)word {
    
    if (word == nil || [word isEqualToString:@""] || [word isEqualToString:@" "] ){
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)validPunctuation:(NSString *)punctuation {
    return NO;
}

-(BOOL)validIndex:(NSUInteger)index {
    return NO;
}

-(void)addWord:(NSString *)word {
    if ([self validPunctuation:word]) {
        [self.words addObject:word];
    }
    [self assembleSentence];
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









