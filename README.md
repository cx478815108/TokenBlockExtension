# TokenBlockExtension
This categories may keep you away from the  fussy style of Objective-C!
**Without the bracket,more easier**


**Before**

```
    NSString *test = @"this is the old way!";
    NSString *string = [NSString stringWithFormat:@"%@",@"The old way may waste you the precious time"];
    NSString *newString = [string stringByReplacingOccurrencesOfString:@"old" withString:@"new"];
    newString = [newString stringByReplacingOccurrencesOfString:@"waste" withString:@"save"];
    

    NSString *names = @"Bob";
    names = [NSString stringWithFormat:@"%@,Jack",names];
    names = [NSString stringWithFormat:@"%@,Seven",names];
    names = [NSString stringWithFormat:@"%@,Hannah",names];
    
    
    UIButton *testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButton setFrame:CGRectMake(0, 0, 200, 200)];
    [testButton addTarget:self action:@selector(btn1Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
    [testButton setTitle:@"old" forState:(UIControlStateNormal)];
    [testButton setTitle:@"fussy" forState:(UIControlStateHighlighted)];
    UIColor *color = [UIColor colorWithRed:200/255 green:200/255 blue:200/255 alpha:1];
    [testButton setTintColor:color];
```

**Now**

```
    NSString *newTest = @"this is the old way!";
    newTest = newTest.token_replace(@"old", @"new")
                     .token_replace(@"waste", @"save");
    
    NSString *newNames = @"Bob".token_append(@"Jack").token_append(@"Seven").token_append(@"Hannah");
    
    UIButton *newButton = UIButton.token_buttonWithType(UIButtonTypeCustom)
                                  .token_addTarget(self, @selector(btn1Pressed:), UIControlEventTouchUpInside)
                                  .token_setTitleWithState(@"old",UIControlStateNormal)
                                  .token_setTitleWithState(@"fussy",UIControlStateHighlighted)
                                  .token_setTintColor(UIColor.token_RGB(200,200,200))
                                  .token_setFrame(CGRectMake(0, 0, 200, 200));
    self.view.token_addSubview(newButton);
```

