.class final Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

.field final synthetic b:Z

.field final synthetic c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Lcab/snapp/snappuikit/SnappFloatingActionButton;Z)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 636
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->b:Z

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hide(Z)V

    .line 639
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    sget v1, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->isHandleVisibilityChanges()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;->b:Z

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/fab/Label;->hide(Z)V

    :cond_2
    return-void
.end method
