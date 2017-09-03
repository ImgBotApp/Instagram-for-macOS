//
//  IXFCheckpointViewController.m
//  Inxtify
//
//  Copyright (C) 2016  Zhi-Wei Cai. (@x43x61x69)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//

#import "IXFCheckpointViewController.h"

@interface IXFCheckpointViewController ()

@end

@implementation IXFCheckpointViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(dismiss:)
                                                 name:kDismissCheckpointViewNotificationKey
                                               object:nil];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewWillAppear
{
    [super viewWillAppear];
    [_webview setMainFrameURL:_URL];
}

#pragma mark - Methods

- (IBAction)dismiss:(id)sender
{
    [self dismissController:sender];
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:kCheckpointViewDismissNotificationKey
                                                            object:self];
    });
}

@end
