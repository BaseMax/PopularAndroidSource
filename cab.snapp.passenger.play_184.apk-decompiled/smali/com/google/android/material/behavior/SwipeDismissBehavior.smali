.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$b;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field a:Landroidx/customview/widget/ViewDragHelper;

.field b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

.field c:I

.field d:F

.field e:F

.field f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private final j:Landroidx/customview/widget/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    const/4 v1, 0x2

    .line 87
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 88
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    .line 89
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 90
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    .line 207
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static a(F)F
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static a(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method static a(III)I
    .locals 0

    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getDragState()I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    .line 168
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    .line 172
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    :goto_0
    if-eqz v0, :cond_4

    .line 1354
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    if-nez p2, :cond_3

    .line 1355
    iget-boolean p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1357
    invoke-static {p1, p2, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1358
    invoke-static {p1, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 190
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDragDismissDistance(F)V
    .locals 0

    .line 131
    invoke-static {p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    return-void
.end method

.method public setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:Z

    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 0

    .line 140
    invoke-static {p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    return-void
.end method
