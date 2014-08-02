%hook UIScrollView

- (id)initWithFrame:(CGRect)frame {
	self = %orig;
	self.scrollsToTop = NO;
	return self;
}

-(id)initWithCoder:(id)arg1 {
	self = %orig;
	self.scrollsToTop = NO;
	return self;
}

- (void)setScrollsToTop:(BOOL)scrolls {
	%orig(NO);
}

%end
