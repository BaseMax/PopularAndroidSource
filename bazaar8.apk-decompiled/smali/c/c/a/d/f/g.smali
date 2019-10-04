.class public abstract Lc/c/a/d/f/g;
.super Lc/c/a/d/f/l;
.source "BaseDaggerDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/d/f/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public sa:Lc/c/a/d/d/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final Za()Lc/c/a/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/g;->sa:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ld/a/a/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 4
    invoke-super {p0, p1}, Ld/a/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/f/g;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/l;->Qa()V

    return-void
.end method
