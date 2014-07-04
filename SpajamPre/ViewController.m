//
//  ViewController.m
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/02.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import "ViewController.h"
#import "QuestionViewController.h"
#import "Questions.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray * questions;
@property NSDictionary * selectedQuestion;

// labels

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // load questions
  _questions = [NSMutableArray array];
  [_questions load];
  
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

# pragma mark - segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  QuestionViewController * viewControlelr = segue.destinationViewController;
  viewControlelr.question = _selectedQuestion;
}

# pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return _questions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
  NSString *cellIdentifier = @"Cell";
  UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
  }
  
  NSDictionary * question = _questions[indexPath.row];
  cell.textLabel.text = question[kText];
  return cell;
}

# pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  _selectedQuestion = _questions[indexPath.row];
  [self performSegueWithIdentifier:@"pushAnswerView" sender:self];
}

@end
