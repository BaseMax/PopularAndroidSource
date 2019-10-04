.class public final Lj/a/d/b$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lk/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/l;

.field public b:Z

.field public final synthetic c:Lj/a/d/b;


# direct methods
.method public constructor <init>(Lj/a/d/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lk/l;

    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    invoke-interface {v0}, Lk/y;->b()Lk/B;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/l;-><init>(Lk/B;)V

    iput-object p1, p0, Lj/a/d/b$b;->a:Lk/l;

    return-void
.end method


# virtual methods
.method public a(Lk/g;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/a/d/b$b;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    invoke-interface {v0, p2, p3}, Lk/h;->c(J)Lk/h;

    .line 3
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 4
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    invoke-interface {v0, p1, p2, p3}, Lk/y;->a(Lk/g;J)V

    .line 5
    iget-object p1, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object p1, p1, Lj/a/d/b;->d:Lk/h;

    invoke-interface {p1, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lk/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/d/b$b;->a:Lk/l;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/d/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lj/a/d/b$b;->b:Z

    .line 3
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 4
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v1, p0, Lj/a/d/b$b;->a:Lk/l;

    invoke-virtual {v0, v1}, Lj/a/d/b;->a(Lk/l;)V

    .line 5
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    const/4 v1, 0x3

    iput v1, v0, Lj/a/d/b;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/d/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lj/a/d/b$b;->c:Lj/a/d/b;

    iget-object v0, v0, Lj/a/d/b;->d:Lk/h;

    invoke-interface {v0}, Lk/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
