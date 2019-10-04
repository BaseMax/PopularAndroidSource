.class final Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionMenu;->hideMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcab/snapp/snappuikit/SnappFloatingActionMenu;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->b:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 419
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->a:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->b:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->b:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;->b:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Z

    return-void
.end method
