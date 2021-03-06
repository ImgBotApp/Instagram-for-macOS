//
//  IXFCommentUserDetailViewController.h
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

#define kUserDetailSegueKey @"UserDetailSegue"

#import <Cocoa/Cocoa.h>

@interface IXFCommentUserDetailViewController : NSViewController

@property (nonatomic, strong) IXFUser *userForDetail;

@property (weak) IBOutlet NSImageView   *profileImageView;
@property (weak) IBOutlet NSButton      *usernameButton;
@property (weak) IBOutlet NSTextField   *fullnameLabel;
@property (weak) IBOutlet NSTextField   *biographyLabel;
@property (weak) IBOutlet NSTextField   *followersLabel;
@property (weak) IBOutlet NSTextField   *postsLabel;
@property (weak) IBOutlet NSButton      *websiteButton;

@end
