.class public final Lc/c/a/c/h/h;
.super Ljava/lang/Object;
.source "StopWatch.kt"


# instance fields
.field public a:J

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lc/c/a/c/h/h;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lc/c/a/c/h/h;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/c/h/h;->b:J

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lc/c/a/c/h/h;->a:J

    return-void
.end method

.method public final b()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lc/c/a/c/h/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/c/a/c/h/h;->c:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lc/c/a/c/h/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/c/h/h;->a:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/c/a/c/h/h;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lc/c/a/c/h/h;->b:J

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/c/a/c/h/h;->c:Z

    .line 4
    iget-wide v0, p0, Lc/c/a/c/h/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/c/a/c/h/h;->a()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lc/c/a/c/h/h;->b:J

    return-wide v0
.end method
