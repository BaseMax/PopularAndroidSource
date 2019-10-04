.class final Lio/reactivex/internal/operators/flowable/ex$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/flowable/ex$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ex$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/ex$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/operators/flowable/ex$a<",
            "*>;)V"
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/ex$a$a;->a:J

    .line 577
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ex$a$a;->b:Lio/reactivex/internal/operators/flowable/ex$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 582
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a$a;->b:Lio/reactivex/internal/operators/flowable/ex$a;

    .line 1275
    iget-boolean v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->cancelled:Z

    if-nez v1, :cond_0

    .line 2275
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->queue:Lio/reactivex/internal/b/i;

    .line 585
    invoke-interface {v1, p0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 587
    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->l:Z

    .line 588
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    .line 590
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ex$a;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ex$a;->a()V

    :cond_1
    return-void
.end method
