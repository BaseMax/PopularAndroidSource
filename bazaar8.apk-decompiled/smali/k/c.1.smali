.class public Lk/c;
.super Lk/B;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c$a;
    }
.end annotation


# static fields
.field public static final e:J

.field public static final f:J

.field public static g:Lk/c;


# instance fields
.field public h:Z

.field public i:Lk/c;

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lk/c;->e:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lk/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lk/c;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/B;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lk/c;JZ)V
    .locals 6

    const-class v0, Lk/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lk/c;->g:Lk/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lk/c;

    invoke-direct {v1}, Lk/c;-><init>()V

    sput-object v1, Lk/c;->g:Lk/c;

    .line 3
    new-instance v1, Lk/c$a;

    invoke-direct {v1}, Lk/c$a;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0}, Lk/B;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lk/c;->j:J

    goto :goto_0

    :cond_1
    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    add-long/2addr p1, v1

    .line 6
    iput-wide p1, p0, Lk/c;->j:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 7
    invoke-virtual {p0}, Lk/B;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lk/c;->j:J

    .line 8
    :goto_0
    invoke-virtual {p0, v1, v2}, Lk/c;->b(J)J

    move-result-wide p1

    .line 9
    sget-object p3, Lk/c;->g:Lk/c;

    .line 10
    :goto_1
    iget-object v3, p3, Lk/c;->i:Lk/c;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lk/c;->i:Lk/c;

    invoke-virtual {v3, v1, v2}, Lk/c;->b(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p3, p3, Lk/c;->i:Lk/c;

    goto :goto_1

    .line 12
    :cond_4
    :goto_2
    iget-object p1, p3, Lk/c;->i:Lk/c;

    iput-object p1, p0, Lk/c;->i:Lk/c;

    .line 13
    iput-object p0, p3, Lk/c;->i:Lk/c;

    .line 14
    sget-object p0, Lk/c;->g:Lk/c;

    if-ne p3, p0, :cond_5

    .line 15
    const-class p0, Lk/c;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_5
    monitor-exit v0

    return-void

    .line 17
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static declared-synchronized a(Lk/c;)Z
    .locals 3

    const-class v0, Lk/c;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lk/c;->g:Lk/c;

    :goto_0
    if-eqz v1, :cond_1

    .line 19
    iget-object v2, v1, Lk/c;->i:Lk/c;

    if-ne v2, p0, :cond_0

    .line 20
    iget-object v2, p0, Lk/c;->i:Lk/c;

    iput-object v2, v1, Lk/c;->i:Lk/c;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lk/c;->i:Lk/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 22
    monitor-exit v0

    return p0

    .line 23
    :cond_0
    :try_start_1
    iget-object v1, v1, Lk/c;->i:Lk/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 24
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static g()Lk/c;
    .locals 8

    .line 1
    sget-object v0, Lk/c;->g:Lk/c;

    iget-object v0, v0, Lk/c;->i:Lk/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3
    const-class v0, Lk/c;

    sget-wide v4, Lk/c;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 4
    sget-object v0, Lk/c;->g:Lk/c;

    iget-object v0, v0, Lk/c;->i:Lk/c;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lk/c;->f:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    .line 5
    sget-object v1, Lk/c;->g:Lk/c;

    :cond_0
    return-object v1

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lk/c;->b(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const-wide/32 v4, 0xf4240

    .line 7
    div-long v6, v2, v4

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    .line 8
    const-class v0, Lk/c;

    long-to-int v3, v2

    invoke-virtual {v0, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    .line 9
    :cond_2
    sget-object v2, Lk/c;->g:Lk/c;

    iget-object v3, v0, Lk/c;->i:Lk/c;

    iput-object v3, v2, Lk/c;->i:Lk/c;

    .line 10
    iput-object v1, v0, Lk/c;->i:Lk/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lk/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lk/c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lk/y;)Lk/y;
    .locals 1

    .line 25
    new-instance v0, Lk/a;

    invoke-direct {v0, p0, p1}, Lk/a;-><init>(Lk/c;Lk/y;)V

    return-object v0
.end method

.method public final a(Lk/z;)Lk/z;
    .locals 1

    .line 26
    new-instance v0, Lk/b;

    invoke-direct {v0, p0, p1}, Lk/b;-><init>(Lk/c;Lk/z;)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lk/c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/c;->j:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk/c;->h:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/B;->f()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lk/B;->d()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 4
    iput-boolean v3, p0, Lk/c;->h:Z

    .line 5
    invoke-static {p0, v0, v1, v2}, Lk/c;->a(Lk/c;JZ)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/c;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lk/c;->h:Z

    .line 3
    invoke-static {p0}, Lk/c;->a(Lk/c;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method
