.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;->hideButtonInMenu(Z)V
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

    .line 683
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$2;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 692
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$2;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$2;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
