.class final Lio/reactivex/ah$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/ah$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Lio/reactivex/internal/disposables/f;

.field final c:J

.field d:J

.field e:J

.field f:J

.field final synthetic g:Lio/reactivex/ah$c;


# direct methods
.method constructor <init>(Lio/reactivex/ah$c;JLjava/lang/Runnable;JLio/reactivex/internal/disposables/f;J)V
    .locals 0

    .line 469
    iput-object p1, p0, Lio/reactivex/ah$c$a;->g:Lio/reactivex/ah$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p4, p0, Lio/reactivex/ah$c$a;->a:Ljava/lang/Runnable;

    .line 471
    iput-object p7, p0, Lio/reactivex/ah$c$a;->b:Lio/reactivex/internal/disposables/f;

    .line 472
    iput-wide p8, p0, Lio/reactivex/ah$c$a;->c:J

    .line 473
    iput-wide p5, p0, Lio/reactivex/ah$c$a;->e:J

    .line 474
    iput-wide p2, p0, Lio/reactivex/ah$c$a;->f:J

    return-void
.end method


# virtual methods
.method public final getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 507
    iget-object v0, p0, Lio/reactivex/ah$c$a;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final run()V
    .locals 10

    .line 479
    iget-object v0, p0, Lio/reactivex/ah$c$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 481
    iget-object v0, p0, Lio/reactivex/ah$c$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lio/reactivex/ah$c$a;->g:Lio/reactivex/ah$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah$c;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 487
    sget-wide v2, Lio/reactivex/ah;->a:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lio/reactivex/ah$c$a;->e:J

    const-wide/16 v6, 0x1

    cmp-long v8, v2, v4

    if-ltz v8, :cond_1

    iget-wide v2, p0, Lio/reactivex/ah$c$a;->c:J

    add-long/2addr v4, v2

    sget-wide v2, Lio/reactivex/ah;->a:J

    add-long/2addr v4, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-wide v2, p0, Lio/reactivex/ah$c$a;->f:J

    iget-wide v4, p0, Lio/reactivex/ah$c$a;->d:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/reactivex/ah$c$a;->d:J

    iget-wide v6, p0, Lio/reactivex/ah$c$a;->c:J

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    goto :goto_1

    .line 489
    :cond_1
    :goto_0
    iget-wide v2, p0, Lio/reactivex/ah$c$a;->c:J

    add-long v4, v0, v2

    .line 494
    iget-wide v8, p0, Lio/reactivex/ah$c$a;->d:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lio/reactivex/ah$c$a;->d:J

    mul-long v2, v2, v8

    sub-long v2, v4, v2

    iput-wide v2, p0, Lio/reactivex/ah$c$a;->f:J

    move-wide v2, v4

    .line 498
    :goto_1
    iput-wide v0, p0, Lio/reactivex/ah$c$a;->e:J

    sub-long/2addr v2, v0

    .line 501
    iget-object v0, p0, Lio/reactivex/ah$c$a;->b:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/ah$c$a;->g:Lio/reactivex/ah$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, v2, v3, v4}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    :cond_2
    return-void
.end method
