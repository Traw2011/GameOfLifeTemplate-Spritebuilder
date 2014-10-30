//
//  Creature.m
//  GameOfLife
//
//  Created by Tevin Harris on 10/30/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (instancetype)initCreature
{
    //since we made Creature inherit from the CCSpite class, 'super' below refers
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/resources-phonehd/bubble.png"];
    
    if(self)
    {
        self.isAlive = NO;
    }return self;
}

-(void)setIsAlive:(BOOL)newState
{
    //when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    //'visible" is a property of any class that inherits  from CCNode, so creatures have a visibility property
    self.visible = _isAlive;
}

@end
