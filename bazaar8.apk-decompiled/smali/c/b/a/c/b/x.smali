.class public Lc/b/a/c/b/x;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lc/b/a/c/b/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/b/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/D<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Lc/b/a/c/b/x$a;

.field public d:Lc/b/a/c/c;

.field public e:I

.field public f:Z

.field public final g:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/b/D;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/b/D;

    iput-object p1, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    .line 3
    iput-boolean p2, p0, Lc/b/a/c/b/x;->a:Z

    .line 4
    iput-boolean p3, p0, Lc/b/a/c/b/x;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget v0, p0, Lc/b/a/c/b/x;->e:I

    if-gtz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lc/b/a/c/b/x;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/c/b/x;->f:Z

    .line 6
    iget-boolean v0, p0, Lc/b/a/c/b/x;->b:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->a()V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lc/b/a/c/c;Lc/b/a/c/b/x$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/x;->d:Lc/b/a/c/c;

    .line 2
    iput-object p2, p0, Lc/b/a/c/b/x;->c:Lc/b/a/c/b/x$a;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/b/x;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lc/b/a/c/b/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/b/a/c/b/x;->e:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c/b/D<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/b/x;->a:Z

    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/c/b/x;->e:I

    if-lez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lc/b/a/c/b/x;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/b/a/c/b/x;->e:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/x;->c:Lc/b/a/c/b/x$a;

    iget-object v1, p0, Lc/b/a/c/b/x;->d:Lc/b/a/c/c;

    invoke-interface {v0, v1, p0}, Lc/b/a/c/b/x$a;->a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/b/a/c/b/x;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/x;->c:Lc/b/a/c/b/x$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/x;->d:Lc/b/a/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/x;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/b/a/c/b/x;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/x;->g:Lc/b/a/c/b/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
