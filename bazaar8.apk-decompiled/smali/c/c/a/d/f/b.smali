.class public abstract Lc/c/a/d/f/b;
.super Ld/a/a/b;
.source "BaseActivity.kt"


# instance fields
.field public u:Lb/r/F$b;

.field public v:Lc/c/a/d/d/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Lb/r/F$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/b;->u:Lb/r/F$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/b;->v:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/d/d/c;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;)V

    return-void

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lb/b/a/m;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onPause()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/b;->B()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onResume()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/f/b;->v:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/d/d/c;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/d/f/a;

    invoke-direct {v1, p0}, Lc/c/a/d/f/a;-><init>(Lc/c/a/d/f/b;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final z()Lc/c/a/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/b;->v:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
