//
//  Button.m
//  Tin-Can-Whiteboard
//
//  Created by Paula Jacobs on 6/8/10.
//  Copyright 2010 MIT Media Lab. All rights reserved.
//

#import "EraserButton.h"
#import "WhiteboardView.h"

@class WhiteboardView;
@implementation EraserButton

@synthesize isErasing;



- (id)initWithImage:(UIImage *)image withFrame:(CGRect)frame{
    if ((self = [super initWithImage:image])) {
        //self.backgroundColor =[UIColor whiteColor];
		[self setNeedsDisplay];
		self.isErasing=false;
		self.frame = frame;
		
		self.userInteractionEnabled=true;
		
    }
	return self;  
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //CGContextRef ctx = UIGraphicsGetCurrentContext();
	if (isErasing==true) {
		//CGContextSetRGBFillColor(ctx, 1.0, 1, 1, 1);
		//CGContextFillRect(ctx, self.bounds);
		//CGContextDrawImage(ctx, sel, )
	}
	if (isErasing==false) {
		//CGContextSetRGBFillColor(ctx, 1.0, 1, 0, .5);
		//CGContextFillRect(ctx, self.bounds);
	}
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	//NSLog(@"touches began");
		
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	[(WhiteboardView *)self.superview changeButtonLocatorLocationWithFrame:self.frame];
	isErasing=true;
	//NSLog(@"End");
	[self setNeedsDisplay];
	
}


- (void)dealloc {
    [super dealloc];
}


@end
