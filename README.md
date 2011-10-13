# Xcode Quick Prototype

This project gives you a simple UIViewController subclass that lets you quickly "Sketch" your application's screen flow using Xcode 4.2 and Storyboarding without coding any delegates or prepareForSegue: methods. This is a great way to quickly prototype program screen flows before you start coding.

## How does it work?
SketchController gives you boilerplate UIViewController code that handles setting up delegates using prepareForSegue: and dismissing view controllers presented without the use of a UINavigationViewController or UITabViewController.  All you do is add a UIButton to the view you want to dismiss and connect it to the SketchController's donePressed: IBAction.


## How to use it?
1. Copy SketchController.h and SketchController.m into your xcode project.
2. Open SketchController.m and copy the following methods to your application's root view controller: -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender  and - (void)dismissModal:

3. Now, you can add new UIViewControllers to your storyboard.  To quickly "Sketch" them together, simply use the Identity Inspector to change each new controller's class to SketchController. **leave the root view controller class identity unchanged.

4.Finally, in each view you added just add a button, and connect it to the ScetchController's donePressed: IBAction. If you do this for every View Controller you add to your storyboard, all you need to do is add Segues in the normal way to wire up transitions.

note:  This will not interfere with the normal transition behavior managed by UINavigationViewController's or UITabViewController's.


