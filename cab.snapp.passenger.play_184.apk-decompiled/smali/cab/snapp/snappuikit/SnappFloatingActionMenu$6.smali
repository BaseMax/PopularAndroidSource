.class final Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;
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
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)Z

    .line 656
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;->onMenuToggle(Z)V

    :cond_0
    return-void
.end method
