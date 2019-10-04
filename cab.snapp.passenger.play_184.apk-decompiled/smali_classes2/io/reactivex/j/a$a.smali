.class final Lio/reactivex/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field volatile g:Z

.field h:J


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/j/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/j/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lio/reactivex/j/a$a;->a:Lio/reactivex/ag;

    .line 487
    iput-object p2, p0, Lio/reactivex/j/a$a;->b:Lio/reactivex/j/a;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)V
    .locals 3

    .line 539
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->f:Z

    if-nez v0, :cond_5

    .line 543
    monitor-enter p0

    .line 544
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    if-eqz v0, :cond_1

    .line 545
    monitor-exit p0

    return-void

    .line 547
    :cond_1
    iget-wide v0, p0, Lio/reactivex/j/a$a;->h:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 548
    monitor-exit p0

    return-void

    .line 550
    :cond_2
    iget-boolean p2, p0, Lio/reactivex/j/a$a;->d:Z

    if-eqz p2, :cond_4

    .line 551
    iget-object p2, p0, Lio/reactivex/j/a$a;->e:Lio/reactivex/internal/util/a;

    if-nez p2, :cond_3

    .line 553
    new-instance p2, Lio/reactivex/internal/util/a;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lio/reactivex/internal/util/a;-><init>(I)V

    .line 554
    iput-object p2, p0, Lio/reactivex/j/a$a;->e:Lio/reactivex/internal/util/a;

    .line 556
    :cond_3
    invoke-virtual {p2, p1}, Lio/reactivex/internal/util/a;->add(Ljava/lang/Object;)V

    .line 557
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 559
    iput-boolean p2, p0, Lio/reactivex/j/a$a;->c:Z

    .line 560
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iput-boolean p2, p0, Lio/reactivex/j/a$a;->f:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 560
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 564
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/j/a$a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    .line 495
    iget-object v0, p0, Lio/reactivex/j/a$a;->b:Lio/reactivex/j/a;

    invoke-virtual {v0, p0}, Lio/reactivex/j/a;->a(Lio/reactivex/j/a$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    return v0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lio/reactivex/j/a$a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/j/a$a;->a:Lio/reactivex/ag;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/ag;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
