.class public abstract Lc/c/a/d/f/i;
.super Lc/c/a/d/f/o;
.source "BaseDaggerFragment.kt"


# instance fields
.field public da:Lb/r/F$b;

.field public ea:Lc/c/a/d/d/c;

.field public fa:Lc/c/a/d/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final Qa()Lc/c/a/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/i;->ea:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Ra()Lb/r/F$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/i;->da:Lb/r/F$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ld/a/a/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/o;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/o;->La()V

    return-void
.end method
