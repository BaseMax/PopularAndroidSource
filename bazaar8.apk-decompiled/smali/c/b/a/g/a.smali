.class public final Lc/b/a/g/a;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lc/b/a/g/d;
.implements Lc/b/a/g/c;


# instance fields
.field public final a:Lc/b/a/g/d;

.field public b:Lc/b/a/g/c;

.field public c:Lc/b/a/g/c;


# direct methods
.method public constructor <init>(Lc/b/a/g/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->a()V

    .line 4
    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->a()V

    return-void
.end method

.method public a(Lc/b/a/g/c;Lc/b/a/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    .line 2
    iput-object p2, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    return-void
.end method

.method public a(Lc/b/a/g/c;)Z
    .locals 3

    .line 5
    instance-of v0, p1, Lc/b/a/g/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lc/b/a/g/a;

    .line 7
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    iget-object v2, p1, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0, v2}, Lc/b/a/g/c;->a(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    iget-object p1, p1, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {v0, p1}, Lc/b/a/g/c;->a(Lc/b/a/g/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Lc/b/a/g/c;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {p1}, Lc/b/a/g/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {p1}, Lc/b/a/g/c;->e()V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, p0}, Lc/b/a/g/d;->b(Lc/b/a/g/c;)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    :goto_0
    invoke-interface {v0}, Lc/b/a/g/c;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Lc/b/a/g/c;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/b/a/g/a;->g(Lc/b/a/g/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->clear()V

    .line 2
    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->clear()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    :goto_0
    invoke-interface {v0}, Lc/b/a/g/c;->d()Z

    move-result v0

    return v0
.end method

.method public d(Lc/b/a/g/c;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/b/a/g/a;->g(Lc/b/a/g/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->e()V

    :cond_0
    return-void
.end method

.method public e(Lc/b/a/g/c;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lc/b/a/g/d;->e(Lc/b/a/g/c;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/b/a/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(Lc/b/a/g/c;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/g/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/b/a/g/a;->g(Lc/b/a/g/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->f(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final g(Lc/b/a/g/c;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->c(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->d(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    :goto_0
    invoke-interface {v0}, Lc/b/a/g/c;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    invoke-interface {v0}, Lc/b/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/a;->c:Lc/b/a/g/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/a/g/a;->b:Lc/b/a/g/c;

    :goto_0
    invoke-interface {v0}, Lc/b/a/g/c;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a;->a:Lc/b/a/g/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/b/a/g/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
