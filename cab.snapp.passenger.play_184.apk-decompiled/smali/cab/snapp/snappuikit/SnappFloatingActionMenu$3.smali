.class final Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionMenu;->open(Z)V
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

    .line 552
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->c:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionButton;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->b:Z

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->show(Z)V

    .line 566
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    sget v1, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->isHandleVisibilityChanges()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;->b:Z

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/fab/Label;->show(Z)V

    :cond_2
    return-void
.end method
