.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionButton;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    sget v1, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionDown()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionDown()V

    .line 123
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    sget v1, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    .line 135
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
