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
    }
    return YES;
    
}

-(BOOL)validPunctuation:(NSString *)punctuation {
    NSArray *validPunctuation = @[@".",@",",@"!",@"?",@";",@":",@"-"];
    for (NSString *p in validPunctuation) {
        if ([p isEqualToString:punctuation]) {
            return YES;
        }
    }
    return NO;
}

-(BOOL)validIndex:(NSUInteger)index {
    if (self.words.count > index) {
        return YES;
    }
    return NO;
}

-(void)addWord:(NSString *)word {
    if ([self validWord:word]) {
        [self.words addObject:word];
    }
    [self assembleSentence];
}

-(void)addWords:(NSArray *)words withPunctuation:(NSString *)punctuation {
    if(words == nil || words.count == 0 || ![self validPunctuation:punctuation]) {
        return;
    }
    
    for (NSString *word in words) {
        if ([self validWord:word]) {
            [self.words addObject:word];
        }
    }
    if ([self validPunctuation:punctuation]) {
        self.punctuation = punctuation;
    }
    
    [self assembleSentence];
}

-(void)removeWordAtIndex:(NSUInteger)index {
    if ([self validIndex:index]) {
        [self.words removeObjectAtIndex:index];
    }
    [self assembleSentence];
}

-(void)insertWord:(NSString *)word atIndex:(NSUInteger)index {
    if ([self validIndex:index] && [self validWord:word]) {
        [self.words insertObject:word atIndex:index];
    }
    [self assembleSentence];
}

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation {
    if ([self validPunctuation:punctuation]){
        self.punctuation = punctuation;
    }
    [self assembleSentence];
}

-(void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString *)word {
    if ([self validIndex:index] && [self validWord:word]) {
        [self.words replaceObjectAtIndex:index withObject:word];
    }
    [self assembleSentence];
}
@end









