.class final Lcab/snapp/snappuikit/fab/Label$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/fab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/fab/Label;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/fab/Label;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionDown()V

    .line 370
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->a(Lcab/snapp/snappuikit/fab/Label;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->a(Lcab/snapp/snappuikit/fab/Label;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionDown()V

    .line 374
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 381
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->a(Lcab/snapp/snappuikit/fab/Label;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$2;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->a(Lcab/snapp/snappuikit/fab/Label;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
