//
//  ViewController.m
//  VFLProgrammatically
//
//  Created by Henry AT on 4/13/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *yellowView;

@property (nonatomic, strong) UILabel *label;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
    [self setupViews];
    
    
    /* Remove comment from the example that you want to launch */
    
    // Example 1: Simple constraints with visual format language
    //    [self example_1];
    
    // Example 2: Simple constraints with visual format and multiple views
    //    [self example_2];
    
    // Example 3: Simple constraints with visual format and options
    //    [self example_3];
    
    // Example 4: Simple constraints with visual format using metrics
    //    [self example_4];
    
    // Example 5: Dynamic size
    //    [self example_5];
    
    // Example 6: Defining constraints through relations
//    [self example_6];
    
    // Otras formas de definir los constraints
//    [self example_7];
    [self example_8];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/* Initial views setup */

- (void)setupViews
{
    self.redView = [UIView new];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    self.redView.backgroundColor = [UIColor colorWithRed:0.95 green:0.47 blue:0.48 alpha:1.0];
    
    self.yellowView = [UIView new];
    self.yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    self.yellowView.backgroundColor = [UIColor colorWithRed:1.00 green:0.83 blue:0.58 alpha:1.0];
    
    [self.view addSubview:self.redView];
    [self.view addSubview:self.yellowView];
    
    // Agregaremos Label para los ejemploe > 6
    self.label = [UILabel new];
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    self.label.text = @"Esto es un Label";
    self.label.font = [UIFont systemFontOfSize:18];
    self.label.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.label];
}

/*
 Hey Devs... the code in the next functions has to be intended for tutorial purposes only.
 I have created work-alone examples that contain a lot of code duplication... not a good practice but way easier to explain :P
 */




/* EXAMPLE 1 */

- (void)example_1
{
    /*
     // 1. Create a dictionary of views
     NSDictionary *viewsDictionary = @{@"redView":self.redView};
     
     // 2. Define the redView Size
     //Definimos el Alto o Height
     NSArray *constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     // Definimos el Ancho o Width
     NSArray *constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     [self.redView addConstraints:constraint_H];
     [self.redView addConstraints:constraint_V];
     
     // 3. Define the redView Position
     NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     // 3.B ...and try to change the visual format string
     //NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView]-30-|" options:0 metrics:nil views:viewsDictionary];
     //NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[redView]" options:0 metrics:nil views:viewsDictionary];
     
     [self.view addConstraints:constraint_POS_H];
     [self.view addConstraints:constraint_POS_V];
     */
    
    //creamos el diccionario
    NSDictionary * vistas = @{@"vista1":self.redView};
    //Definimos alto
    NSArray * constraintsAlto = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[vista1(100)]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:vistas];
    // Definimos el Ancho
    NSArray *constraintsAncho = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[vista1(100)]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:vistas];
    
    //Definimos la posicion Vertical
    NSArray *posVertical = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[vista1]-20-|"
                                                                   options:0
                                                                   metrics:nil
                                                                     views:vistas];
    NSArray *posHorizontal = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[vista1]-5-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:vistas];
    
    [self.redView addConstraints:constraintsAlto];
    [self.redView addConstraints:constraintsAncho];
    [self.view addConstraints:posVertical];
    [self.view addConstraints:posHorizontal];
    
}



/* EXAMPLE 2 */

- (void)example_2
{
    /*
     // 1. Create a dictionary of views
     NSDictionary *viewsDictionary = @{@"redView":self.redView, @"yellowView":self.yellowView};
     
     // 2. Define the views Sizes
     NSArray *red_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     NSArray *red_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     [self.redView addConstraints:red_constraint_H];
     [self.redView addConstraints:red_constraint_V];
     
     NSArray *yellow_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(200)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     NSArray *yellow_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
     options:0
     metrics:nil
     views:viewsDictionary];
     [self.yellowView addConstraints:yellow_constraint_H];
     [self.yellowView addConstraints:yellow_constraint_V];
     
     // 3. Define the views Positions
     NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView]-40-[yellowView]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]-10-[yellowView]"
     options:0
     metrics:nil
     views:viewsDictionary];
     
     [self.view addConstraints:constraint_POS_V];
     [self.view addConstraints:constraint_POS_H];
     */
    
    //Difinimos el Diccionario
    NSDictionary * lasVistasDic = @{@"v01":self.redView,@"v02":self.yellowView};
    //Definimos Ancho y Alto de v01
    NSArray * anchov01 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[v01(100)]" options:0 metrics:nil views:lasVistasDic];
    NSArray * altov01 =  [NSLayoutConstraint constraintsWithVisualFormat:@"V:[v01(100)]" options:0 metrics:nil views:lasVistasDic];
    [self.redView addConstraints:anchov01];
    [self.redView addConstraints:altov01];
    
    NSArray * anchov02 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[v02(200)]" options:0 metrics:nil views:lasVistasDic];
    NSArray * altov02 =  [NSLayoutConstraint constraintsWithVisualFormat:@"V:[v02(100)]" options:0 metrics:nil views:lasVistasDic];
    [self.yellowView addConstraints:anchov02];
    [self.yellowView addConstraints:altov02];
    
    // Definimos Posicion de las vistas
    NSArray *posH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[v01]-50-[v02]"
                                                            options:0
                                                            metrics:nil
                                                              views:lasVistasDic];
    NSArray *posV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[v01]-50-[v02]"
                                                            options:0
                                                            metrics:nil
                                                              views:lasVistasDic];
    
    [self.view addConstraints:posH];
    [self.view addConstraints:posV];
}



/* EXAMPLE 3 */

- (void)example_3
{
    
    // 1. Create a dictionary of views
    NSDictionary *viewsDictionary = @{@"redView":self.redView, @"yellowView":self.yellowView};
    
    // 2. Define the views Sizes
    NSArray *red_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
    
    NSArray *red_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
    [self.redView addConstraints:red_constraint_H];
    [self.redView addConstraints:red_constraint_V];
    
    NSArray *yellow_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(150)]"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    
    NSArray *yellow_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    [self.yellowView addConstraints:yellow_constraint_H];
    [self.yellowView addConstraints:yellow_constraint_V];
    
    // 3. Define the views Positions using options
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-120-[redView]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
    
    
    NSArray *constraint_POS = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]-10-[yellowView]"
                                                                      options:NSLayoutFormatAlignAllTop
                                                                      metrics:nil views:viewsDictionary];
    
    [self.view addConstraints:constraint_POS_V];
    [self.view addConstraints:constraint_POS];
    
}



/* EXAMPLE 4 */

- (void)example_4
{
    // 1. Create a dictionary of views and metrics
    NSDictionary *viewsDictionary = @{@"redView":self.redView, @"yellowView":self.yellowView};
    NSDictionary *metrics = @{@"redWidth": @100,
                              @"redHeight": @100,
                              @"yellowWidth": @100,
                              @"yellowHeight": @150,
                              @"topMargin": @120,
                              @"leftMargin": @20,
                              @"viewSpacing":@10
                              };
    
    // 2. Define the views Sizes
    NSArray *red_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(redHeight)]"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    NSArray *red_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(redWidth)]"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    [self.redView addConstraints:red_constraint_H];
    [self.redView addConstraints:red_constraint_V];
    
    NSArray *yellow_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(yellowHeight)]"
                                                                           options:0
                                                                           metrics:metrics
                                                                             views:viewsDictionary];
    
    NSArray *yellow_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(yellowWidth)]"
                                                                           options:0
                                                                           metrics:metrics
                                                                             views:viewsDictionary];
    
    [self.yellowView addConstraints:yellow_constraint_H];
    [self.yellowView addConstraints:yellow_constraint_V];
    
    // 3. Define the views Positions
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-topMargin-[redView]"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    NSArray *constraint_POS = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-leftMargin-[redView]-viewSpacing-[yellowView]"
                                                                      options:NSLayoutFormatAlignAllTop
                                                                      metrics:metrics
                                                                        views:viewsDictionary];
    
    [self.view addConstraints:constraint_POS_V];
    [self.view addConstraints:constraint_POS];
}



/* EXAMPLE 5 */

- (void)example_5
{
    // 1. Create a dictionary of views and metrics
    NSDictionary *viewsDictionary = @{@"redView":self.redView};
    NSDictionary *metrics = @{@"vSpacing":@30, @"hSpacing":@10};
    
    // 2. Define the view Position and automatically the Size
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-vSpacing-[redView]-vSpacing-|"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-hSpacing-[redView]-hSpacing-|"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    [self.view addConstraints:constraint_POS_V];
    [self.view addConstraints:constraint_POS_H];
}



/* EXAMPLE 6 */

- (void)example_6
{
    // 1. Create a dictionary of views
    NSDictionary *viewsDictionary = @{@"redView": self.redView, @"yellowView": self.yellowView};
    NSDictionary *metrics = @{@"vSpacing":@30, @"hSpacing":@10};
    
    
    // 2. Define the view Position and automatically the Size (for the redView)
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-vSpacing-[redView]-vSpacing-|"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-hSpacing-[redView]-hSpacing-|"
                                                                        options:0
                                                                        metrics:metrics
                                                                          views:viewsDictionary];
    
    [self.view addConstraints:constraint_POS_V];
    [self.view addConstraints:constraint_POS_H];
    
    
    
    // 3. Define sizes thanks to relations with another view (yellowView in relation with redView)
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:self.yellowView
                              attribute:NSLayoutAttributeWidth
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.redView
                              attribute:NSLayoutAttributeWidth
                              multiplier:0.5
                              constant:0.0]];
    // yellowView.width = redView.width * 0.5 + 0.0;
    
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:self.yellowView
                              attribute:NSLayoutAttributeHeight
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.redView
                              attribute:NSLayoutAttributeHeight
                              multiplier:0.5
                              constant:0.0]];
    
    // 4. Define position thanks to relations with another view (yellowView in relation with redView)
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:self.yellowView
                              attribute:NSLayoutAttributeCenterX
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.redView
                              attribute:NSLayoutAttributeCenterX
                              multiplier:1.0
                              constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:self.yellowView
                              attribute:NSLayoutAttributeCenterY
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.redView
                              attribute:NSLayoutAttributeCenterY
                              multiplier:1.0
                              constant:0.0]];
    
//    yellowView.center.x = redView.center.x * 1.0 + 0.0;
//    yellowView.center.y = redView.center.y * 1.0 + 0.0;
    
}

- (void)example_7 {
    
    NSDictionary *viewsDictionary = @{@"label":self.label};
    
//    NSArray *constraint_Ancho = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[label(300)]"
//                                                                    options:0
//                                                                    metrics:nil
//                                                                      views:viewsDictionary];
//    
//    // Definimos el Ancho o Width
//    NSArray *constraint_Alto = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[label(100)]"
//                                                                    options:0
//                                                                    metrics:nil
//                                                                      views:viewsDictionary];
//    [self.label addConstraints:constraint_Ancho];
//    [self.label addConstraints:constraint_Alto];
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    //Posicion
    
//    NSArray *constraints = [NSLayoutConstraint
//                            constraintsWithVisualFormat:@"V:|-offsetTop-[label]"
//                            options:0
//                            metrics:@{@"offsetTop": @100}
//                            views:NSDictionaryOfVariableBindings(self.label)];
    
    NSArray *constraints = [NSLayoutConstraint
                            constraintsWithVisualFormat:@"V:|-offsetTop-[label]"
                            options:0
                            metrics:@{@"offsetTop": @100}
                            views:viewsDictionary];
    
    [self.view addConstraints:constraints];
}

-(void)example_8{

    NSDictionary *viewsDictionary = @{@"redView": self.redView, @"yellowView": self.yellowView, @"label":self.label};
    
    NSArray * anchov01 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(50)]" options:0 metrics:nil views:viewsDictionary];
    NSArray * altov01 =  [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]" options:0 metrics:nil views:viewsDictionary];
    [self.redView addConstraints:anchov01];
    [self.redView addConstraints:altov01];
    
//    NSArray * anchov02 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(50)]" options:0 metrics:nil views:viewsDictionary];
//    NSArray * altov02 =  [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(50)]" options:0 metrics:nil views:viewsDictionary];
//    [self.yellowView addConstraints:anchov02];
//    [self.yellowView addConstraints:altov02];
    // - - - - - --
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|[redView][label][yellowView(==redView)]|"
                               options:0
                               metrics:nil
                               views:viewsDictionary]];
    //NSDictionaryOfVariableBindings(label, spacer1, spacer2)

}



@end
