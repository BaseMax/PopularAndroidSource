.class public Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "ApptentiveNestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;,
        Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;,
        Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;

.field private static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 169
    new-instance v0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    .line 171
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 119
    iput-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 126
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 142
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 152
    iput v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 157
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    .line 158
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollConsumed:[I

    .line 192
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->initScrollView()V

    .line 194
    sget-object v2, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setFillViewport(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 202
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 205
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 207
    sget-object p1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;)I
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result p0

    return p0
.end method

.method private canScroll()Z
    .locals 4

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 426
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1289
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p0, v1, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1719
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 1721
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->recycleVelocityTracker()V

    .line 1722
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->stopNestedScroll()V

    .line 1724
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 1726
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 2

    .line 1749
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 1751
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1752
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    .line 1753
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1756
    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    .line 1757
    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    :cond_1
    :goto_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    .line 1034
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1046
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 1048
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1049
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1050
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    const/4 v9, 0x1

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v4, :cond_1

    move-object v4, v6

    move v5, v10

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    .line 1067
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1069
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v4, v6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    move-object v4, v6

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v4
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4

    .line 1707
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    .line 1709
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    .line 1710
    invoke-virtual {p0, v2, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1711
    invoke-virtual {p0, v2, v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_3

    .line 1713
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->fling(I)V

    :cond_3
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .line 1009
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1010
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1011
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 930
    iget v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 931
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 932
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 933
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 938
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    .line 935
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_1
    :goto_0
    iget v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .locals 4

    .line 570
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    .line 572
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 573
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    .line 574
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 575
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 576
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 362
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setWillNotDraw(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTouchSlop:I

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mMinimumVelocity:I

    .line 367
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    .line 1267
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1683
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1684
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1276
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1278
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1279
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 886
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 887
    iget v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 892
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 893
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 894
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 895
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    .line 1182
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v0

    .line 1183
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1187
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    .line 1196
    :goto_1
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->doScrollY(I)V

    const/4 v2, 0x1

    .line 1199
    :goto_2
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v2
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1477
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 1481
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1483
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 376
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 385
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 400
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 1213
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1216
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1218
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1221
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1222
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1223
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1224
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->doScrollY(I)V

    .line 1225
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    .line 1230
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 1231
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    .line 1233
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1234
    invoke-virtual {p0, v3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1235
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_3

    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    .line 1244
    :goto_1
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    .line 1247
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1248
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1254
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1255
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setDescendantFocusability(I)V

    .line 1256
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->requestFocus()Z

    .line 1257
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->setDescendantFocusability(I)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1389
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1383
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1377
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 14

    .line 1423
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1424
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v4

    .line 1425
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    .line 1426
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    .line 1427
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    if-ne v4, v1, :cond_0

    if-eq v0, v11, :cond_4

    .line 1430
    :cond_0
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v12

    .line 1431
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    if-lez v12, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    :goto_1
    sub-int v2, v1, v4

    sub-int v3, v11, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v5, v0

    move v7, v12

    .line 1435
    invoke-virtual/range {v1 .. v10}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    if-eqz v13, :cond_4

    .line 1439
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->ensureGlows()V

    if-gtz v11, :cond_3

    if-lez v0, :cond_3

    .line 1441
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_2

    :cond_3
    if-lt v11, v12, :cond_4

    if-ge v0, v12, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_4
    :goto_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 1498
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1500
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v0

    .line 1501
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1504
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1507
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 1512
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    .line 1518
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    .line 1523
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1525
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_0

    .line 1528
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 1532
    :goto_0
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1534
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 1536
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    .line 1541
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 1543
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    .line 1546
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1550
    :goto_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1371
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1365
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1344
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    .line 1345
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1350
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1351
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 1352
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 516
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1763
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1764
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    .line 1765
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    .line 1766
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1767
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1768
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1770
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1771
    iget-object v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1772
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1773
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1775
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1777
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1779
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1780
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v3

    neg-int v4, v2

    .line 1782
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1783
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 1782
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    .line 1784
    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1785
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1786
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1789
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 530
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 534
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 538
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1

    .line 544
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 545
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 555
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 547
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 548
    invoke-virtual {p0, v4}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 550
    :cond_5
    invoke-virtual {p0, v4}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 561
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 v2, 0x21

    :cond_7
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->pageScroll(I)Z

    :cond_8
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(I)V
    .locals 14

    .line 1695
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1696
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1697
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1699
    iget-object v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int/2addr v2, v0

    .line 1700
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    move v7, p1

    .line 1699
    invoke-virtual/range {v3 .. v13}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    .line 1702
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1150
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v3

    .line 1152
    iget-object v4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1153
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1

    .line 1156
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 1158
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1160
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 326
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 1394
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1399
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v0

    .line 1400
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1399
    invoke-static {p2, v0, p3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 1402
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1404
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1413
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1412
    invoke-static {p2, p5, p3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1415
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1418
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1653
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 901
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    .line 905
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 908
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 909
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v0

    .line 910
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_3

    .line 918
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 625
    iget-boolean v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 640
    :pswitch_0
    iget v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    if-ne v0, v3, :cond_1

    goto/16 :goto_0

    .line 646
    :cond_1
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string p1, "NestedScrollView"

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 653
    :cond_2
    invoke-static {p1, v5}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 654
    iget v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 655
    iget v5, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_6

    .line 656
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 657
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 658
    iput v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 659
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 660
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 661
    iput v4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    .line 662
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 664
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 701
    :pswitch_1
    iput-boolean v4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 702
    iput v3, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 703
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->recycleVelocityTracker()V

    .line 704
    iget-object v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroidx/core/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 705
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 707
    :cond_3
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->stopNestedScroll()V

    goto :goto_0

    .line 671
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 673
    iput-boolean v4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 674
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->recycleVelocityTracker()V

    goto :goto_0

    .line 682
    :cond_4
    iput v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 683
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 685
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->initOrResetVelocityTracker()V

    .line 686
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 693
    iput-boolean v4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    .line 694
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 710
    :cond_5
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 718
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1620
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1621
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLayoutDirty:Z

    .line 1623
    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {p2, p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1624
    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    .line 1626
    iput-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1628
    iget-boolean p4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_4

    .line 1629
    iget-object p4, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSavedState:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    if-eqz p4, :cond_1

    .line 1630
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSavedState:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    iget v0, v0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollTo(II)V

    .line 1631
    iput-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSavedState:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    .line 1634
    :cond_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    sub-int/2addr p5, p3

    .line 1636
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    .line 1635
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1639
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 1640
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollTo(II)V

    goto :goto_1

    .line 1641
    :cond_3
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_4

    .line 1642
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollTo(II)V

    .line 1647
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1648
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 484
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 486
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 496
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 497
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getMeasuredHeight()I

    move-result v0

    .line 498
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 499
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 502
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 501
    invoke-static {p1, v2, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 503
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 504
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 506
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 508
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    float-to-int p1, p3

    .line 296
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->flingWithNestedDispatch(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 281
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    .line 282
    invoke-virtual {p0, p2, p5}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollBy(II)V

    .line 283
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p2

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    .line 269
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 946
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1587
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1588
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    .line 1595
    :cond_3
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 1599
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1826
    check-cast p1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    .line 1827
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1828
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSavedState:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    .line 1829
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1834
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1835
    new-instance v1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1836
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 7

    .line 475
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 477
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mOnScrollChangeListener:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mOnScrollChangeListener:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1658
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1660
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1667
    invoke-direct {p0, p1, p2, p4}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1668
    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1669
    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1670
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1671
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->doScrollY(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 725
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 727
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 730
    iput v1, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    .line 732
    :cond_0
    iget v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, -0x1

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 870
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 871
    iget v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 872
    invoke-static {v11, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 871
    invoke-static {v11, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    goto/16 :goto_5

    .line 864
    :pswitch_2
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 865
    invoke-static {v11, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 866
    invoke-static {v11, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    goto/16 :goto_5

    .line 854
    :pswitch_3
    iget-boolean v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 855
    iget-object v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v9

    .line 855
    invoke-virtual/range {v3 .. v9}, Landroidx/core/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 860
    :cond_1
    iput v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->endDrag()V

    goto/16 :goto_5

    .line 761
    :pswitch_4
    iget v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    invoke-static {v11, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    if-ne v15, v2, :cond_2

    const-string v0, "NestedScrollView"

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 768
    :cond_2
    invoke-static {v11, v15}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 769
    iget v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    sub-int/2addr v2, v0

    .line 770
    iget-object v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 771
    iget-object v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollConsumed:[I

    aget v3, v3, v14

    sub-int/2addr v2, v3

    .line 772
    iget-object v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v3, v3, v14

    int-to-float v3, v3

    invoke-virtual {v12, v13, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 773
    iget v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    iget-object v4, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v4, v4, v14

    add-int/2addr v3, v4

    iput v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    .line 775
    :cond_3
    iget-boolean v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_6

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 778
    invoke-interface {v3, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 780
    :cond_4
    iput-boolean v14, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-lez v2, :cond_5

    .line 782
    iget v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 784
    :cond_5
    iget v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTouchSlop:I

    add-int/2addr v2, v3

    :cond_6
    :goto_0
    move v9, v2

    .line 787
    iget-boolean v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_13

    .line 789
    iget-object v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v2, v2, v14

    sub-int/2addr v0, v2

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v16

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v8

    .line 793
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v14, :cond_7

    if-lez v8, :cond_7

    goto :goto_1

    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/16 v17, 0x1

    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move v2, v9

    move v6, v8

    move/from16 v20, v8

    move/from16 v8, v18

    move v13, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 803
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 806
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    sub-int v4, v13, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 808
    iget-object v5, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 809
    iget v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 810
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 811
    iget v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mNestedYOffset:I

    goto/16 :goto_5

    :cond_a
    if-eqz v17, :cond_13

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->ensureGlows()V

    add-int v0, v16, v13

    if-gez v0, :cond_b

    .line 816
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 817
    invoke-static {v11, v15}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 816
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 818
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 819
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_3

    :cond_b
    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 822
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 823
    invoke-static {v11, v15}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 822
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 825
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 826
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 829
    :cond_c
    :goto_3
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_13

    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    .line 830
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_13

    .line 831
    :cond_d
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_5

    .line 837
    :pswitch_5
    iget-boolean v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 838
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 839
    iget v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 840
    iget v1, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 843
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mMinimumVelocity:I

    if-le v1, v3, :cond_e

    neg-int v0, v0

    .line 844
    invoke-direct {v10, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->flingWithNestedDispatch(I)V

    goto :goto_4

    .line 845
    :cond_e
    iget-object v3, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v9

    .line 845
    invoke-virtual/range {v3 .. v9}, Landroidx/core/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 847
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 850
    :cond_f
    :goto_4
    iput v2, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->endDrag()V

    goto :goto_5

    .line 736
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 739
    :cond_10
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 742
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 750
    :cond_11
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 751
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 755
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastMotionY:I

    .line 756
    invoke-static {v11, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    .line 757
    invoke-virtual {v10, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->startNestedScroll(I)Z

    .line 876
    :cond_13
    :goto_5
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 877
    iget-object v0, v10, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 879
    :cond_14
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v14

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 12

    move-object v0, p0

    .line 954
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 956
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 958
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    add-int v1, p3, p1

    if-nez v2, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    add-int v2, p4, p2

    if-nez v6, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    move/from16 v3, p8

    :goto_7
    neg-int v6, v7

    add-int v7, v7, p5

    neg-int v8, v3

    add-int v3, v3, p6

    if-le v1, v7, :cond_8

    move v6, v7

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    if-ge v1, v6, :cond_9

    goto :goto_8

    :cond_9
    move v6, v1

    const/4 v1, 0x0

    :goto_9
    if-le v2, v3, :cond_a

    move v8, v3

    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    if-ge v2, v8, :cond_b

    goto :goto_a

    :cond_b
    move v8, v2

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_c

    .line 999
    iget-object v3, v0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v3

    move p2, v6

    move p3, v8

    move/from16 p4, v7

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Landroidx/core/widget/ScrollerCompat;->springBack(IIIIII)Z

    .line 1002
    :cond_c
    invoke-virtual {p0, v6, v8, v1, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    return v4
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1114
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1118
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 1120
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1122
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1126
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1127
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    .line 1128
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1131
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1133
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1557
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1558
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1561
    :cond_0
    iput-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1563
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1606
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1607
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1606
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1609
    invoke-direct {p0, p2, p3}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->recycleVelocityTracker()V

    .line 607
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1614
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mIsLayoutDirty:Z

    .line 1615
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1738
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1739
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1740
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->clamp(III)I

    move-result p1

    .line 1741
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->clamp(III)I

    move-result p2

    .line 1742
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1743
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1459
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1461
    iget-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1464
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 453
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mFillViewport:Z

    .line 454
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mOnScrollChangeListener:Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 1304
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1310
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 1311
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    .line 1312
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1313
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr p2, v1

    .line 1314
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 1316
    iget-object p2, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2, v1, v0, p1}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIII)V

    .line 1317
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 1322
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->scrollBy(II)V

    .line 1324
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 1334
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
