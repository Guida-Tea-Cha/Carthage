//
//  UIView+YYAdd.h
//  YYKit <https://github.com/ibireme/YYKit>
//
//  Created by ibireme on 13/4/3.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Provides extensions for `UIView`.
 */
@interface UIView (YYAdd)

/**
 Create a snapshot image of the complete view hierarchy.
 */
- (nullable UIImage *)snapshotImage;

/**
 Create a snapshot image of the complete view hierarchy.
 @discussion It's faster than "snapshotImage", but may cause screen updates.
 See -[UIView drawViewHierarchyInRect:afterScreenUpdates:] for more information.
 */
- (nullable UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

/**
 Create a snapshot PDF of the complete view hierarchy.
 */
- (nullable NSData *)snapshotPDF;

/**
 Shortcut to set the view.layer's shadow
 
 @param color  Shadow Color
 @param offset Shadow offset
 @param radius Shadow radius
 */
- (void)setLayerShadow:(nullable UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;

/**
 Remove all subviews.
 
 @warning Never call this method inside your view's drawRect: method.
 */
- (void)removeAllSubviews;

/**
 Returns the view's view controller (may be nil).
 */
@property (nullable, nonatomic, readonly) UIViewController *viewController;

/**
 Returns the visible alpha on screen, taking into account superview and window.
 */
@property (nonatomic, readonly) CGFloat visibleAlpha;

/**
 Converts a point from the receiver's coordinate system to that of the specified view or window.
 
 @param point A point specified in the local coordinate system (bounds) of the receiver.
 @param view  The view or window into whose coordinate system point is to be converted. 
    If view is nil, this method instead converts to window base coordinates.
 @return The point converted to the coordinate system of view.
 */
- (CGPoint)convertPoint:(CGPoint)point toViewOrWindow:(nullable UIView *)view;

/**
 Converts a point from the coordinate system of a given view or window to that of the receiver.
 
 @param point A point specified in the local coordinate system (bounds) of view.
 @param view  The view or window with point in its coordinate system. 
    If view is nil, this method instead converts from window base coordinates.
 @return The point converted to the local coordinate system (bounds) of the receiver.
 */
- (CGPoint)convertPoint:(CGPoint)point fromViewOrWindow:(nullable UIView *)view;

/**
 Converts a rectangle from the receiver's coordinate system to that of another view or window.
 
 @param rect A rectangle specified in the local coordinate system (bounds) of the receiver.
 @param view The view or window that is the target of the conversion operation. If view is nil, this method instead converts to window base coordinates.
 @return The converted rectangle.
 */
- (CGRect)convertRect:(CGRect)rect toViewOrWindow:(nullable UIView *)view;

/**
 Converts a rectangle from the coordinate system of another view or window to that of the receiver.
 
 @param rect A rectangle specified in the local coordinate system (bounds) of view.
 @param view The view or window with rect in its coordinate system.
    If view is nil, this method instead converts from window base coordinates.
 @return The converted rectangle.
 */
- (CGRect)convertRect:(CGRect)rect fromViewOrWindow:(nullable UIView *)view;

/**
 Shortcut to set the view.layer's round corner
 
 @param corners     Round corners
 @param cornerRadii Round radii
 */
- (void)roundedByCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;

/**
 Shortcut to set the view.layer's round corner and add border
 
 @param corners     Round   corners
 @param cornerRadii Round  radii
 @param borderWidth Border width
 @param borderColor Border color
 */
- (void)roundedByCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

/**
 *  添加Tap手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UITapGestureRecognizer *)addGestureTapTarget:(id)target action:(SEL)action;

/**
 *  添加Pan手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UIPanGestureRecognizer *)addGesturePanTarget:(id)target action:(SEL)action;

/**
 *  添加Pinch手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UIPinchGestureRecognizer *)addGesturePinchTarget:(id)target action:(SEL)action;

/**
 *  添加LongPress手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UILongPressGestureRecognizer *)addGestureLongPressTarget:(id)target action:(SEL)action;

/**
 *  添加Swipe手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UISwipeGestureRecognizer *)addGestureSwipeTarget:(id)target action:(SEL)action;

/**
 *  添加Rotation手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UIRotationGestureRecognizer *)addGestureRotationTarget:(id)target action:(SEL)action;

/**
 *  添加ScreenEdgePan手势事件
 *
 *  @param target 事件目标
 *  @param action 事件
 *
 *  @return 返回添加的手势
 */
- (UIScreenEdgePanGestureRecognizer *)addGestureScreenEdgePanTarget:(id)target action:(SEL)action;

/**
 *  添加Tap手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UITapGestureRecognizer *)addGestureTapEventHandle:(void (^)(id sender, UITapGestureRecognizer *gestureRecognizer))event;

/**
 *  添加Pan手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UIPanGestureRecognizer *)addGesturePanEventHandle:(void (^)(id sender, UIPanGestureRecognizer *gestureRecognizer))event;

/**
 *  添加Pinch手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UIPinchGestureRecognizer *)addGesturePinchEventHandle:(void (^)(id sender, UIPinchGestureRecognizer *gestureRecognizer))event;

/**
 *  添加LongPress手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UILongPressGestureRecognizer *)addGestureLongPressEventHandle:(void (^)(id sender, UILongPressGestureRecognizer *gestureRecognizer))event;

/**
 *  添加Swipe手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UISwipeGestureRecognizer *)addGestureSwipeEventHandle:(void (^)(id sender, UISwipeGestureRecognizer *gestureRecognizer))event;

/**
 *  添加Rotation手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UIRotationGestureRecognizer *)addGestureRotationEventHandle:(void (^)(id sender, UIRotationGestureRecognizer *gestureRecognizer))event;

/**
 *  添加ScreenEdgePan手势block事件
 *
 *  @param event block事件
 *
 *  @return 返回添加的手势
 */
- (UIScreenEdgePanGestureRecognizer *)addGestureScreenEdgePanEventHandle:(void (^)(id sender, UIScreenEdgePanGestureRecognizer *gestureRecognizer))event;

@property (nonatomic) CGFloat left;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat top;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  size;        ///< Shortcut for frame.size.
@property (nonatomic) CGFloat x;           ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat y;           ///< Shortcut for frame.origin.y.

@end

NS_ASSUME_NONNULL_END
