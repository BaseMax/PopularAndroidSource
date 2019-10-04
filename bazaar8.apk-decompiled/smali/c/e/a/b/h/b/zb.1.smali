.class public abstract Lc/e/a/b/h/b/zb;
.super Lc/e/a/b/h/b/_a;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/_a;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    iget-object p1, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1, p0}, Lc/e/a/b/h/b/Y;->b(Lc/e/a/b/h/b/zb;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/zb;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/zb;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->w()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/b/h/b/zb;->b:Z

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/zb;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->A()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->w()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/b/h/b/zb;->b:Z

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract z()Z
.end method
