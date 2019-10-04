.class public Lc/e/a/b/d/d/s;
.super Lc/e/a/b/d/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lc/e/a/b/d/d/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final G:Lc/e/a/b/d/a/a$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$h<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/s;->G:Lc/e/a/b/d/a/a$h;

    invoke-interface {v0, p1}, Lc/e/a/b/d/a/a$h;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/d/s;->G:Lc/e/a/b/d/a/a$h;

    invoke-interface {v0, p1, p2}, Lc/e/a/b/d/a/a$h;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/b/d/d/h;->e()I

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/s;->G:Lc/e/a/b/d/a/a$h;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$h;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/s;->G:Lc/e/a/b/d/a/a$h;

    invoke-interface {v0}, Lc/e/a/b/d/a/a$h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Lc/e/a/b/d/a/a$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/d/a/a$h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/s;->G:Lc/e/a/b/d/a/a$h;

    return-object v0
.end method
