.class public final Lb/H/a/d/a/b$g;
.super Lb/H/a/d/a/b$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/H/a/d/a/b$a;-><init>(Lb/H/a/d/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)V
    .locals 0

    .line 2
    iput-object p2, p1, Lb/H/a/d/a/b$h;->c:Lb/H/a/d/a/b$h;

    return-void
.end method

.method public a(Lb/H/a/d/a/b$h;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    return-void
.end method

.method public a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$d;Lb/H/a/d/a/b$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/d/a/b<",
            "*>;",
            "Lb/H/a/d/a/b$d;",
            "Lb/H/a/d/a/b$d;",
            ")Z"
        }
    .end annotation

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p1, Lb/H/a/d/a/b;->f:Lb/H/a/d/a/b$d;

    if-ne v0, p2, :cond_0

    .line 11
    iput-object p3, p1, Lb/H/a/d/a/b;->f:Lb/H/a/d/a/b$d;

    const/4 p2, 0x1

    .line 12
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 13
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/d/a/b<",
            "*>;",
            "Lb/H/a/d/a/b$h;",
            "Lb/H/a/d/a/b$h;",
            ")Z"
        }
    .end annotation

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    if-ne v0, p2, :cond_0

    .line 5
    iput-object p3, p1, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    const/4 p2, 0x1

    .line 6
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 7
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/d/a/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p1, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 17
    iput-object p3, p1, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 18
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 19
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
