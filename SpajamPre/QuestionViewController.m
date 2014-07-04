//
//  AnswerViewController.m
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/02.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import "QuestionViewController.h"
#import "Questions.h"

@interface QuestionViewController ()
// labels
@property (weak, nonatomic) IBOutlet UILabel * textLabel;
@property (weak, nonatomic) IBOutlet UILabel * usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel * posNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel * negNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel * answeredLabel;
@property (weak, nonatomic) IBOutlet UILabel * commentsLabel;
@property (weak, nonatomic) IBOutlet UILabel * createdAtLabel;
@end

@implementation QuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self setupLabels];
}

- (void)setupLabels
{
  
  _textLabel.text = _question[kText];
  _usernameLabel.text = _question[kUsername];
  _posNumberLabel.text = _question[kPosNumber];
  _negNumberLabel.text = _question[kNegNumber];
  _answeredLabel.text = _question[kAnswered];
//  _commentsLabel.text = _question[kComments];
  _createdAtLabel.text = _question[kCreatedAt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
