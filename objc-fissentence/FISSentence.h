//
//  FISSentence.h
//  objc-fissentence
//
//  Created by Douglas Galante on 3/12/17.
//  Copyright © 2017 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISSentence : NSObject

@property (strong, readonly) NSString *sentence;
@property (strong, nonatomic) NSArray *words;
@property (strong, nonatomic) NSArray *punctuation;


-(void)addWord:(NSString *)word;

-(void)addWords:(NSString *)word withPunctuation:(NSString *)punctuation;

-(void)removeWordAtIndex:(NSUInteger)index;

-(void)insertWord:(NSString *)word atIndex:(NSUInteger)index;

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation;

-(void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString *)word;

@end


