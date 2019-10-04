.class final Lio/reactivex/internal/operators/c/ek$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ek$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/c/ek$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ek$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/c/ek$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/operators/c/ek$a<",
            "*>;)V"
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/ek$a$a;->a:J

    .line 499
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ek$a$a;->b:Lio/reactivex/internal/operators/c/ek$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 504
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a$a;->b:Lio/reactivex/internal/operators/c/ek$a;

    .line 1247
    iget-boolean v1, v0, Lio/reactivex/internal/operators/c/ek$a;->cancelled:Z

    if-nez v1, :cond_0

    .line 2247
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ek$a;->queue:Lio/reactivex/internal/b/i;

    .line 507
    invoke-interface {v1, p0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 509
    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/ek$a;->p:Z

    .line 510
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ek$a;->a()V

    .line 512
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ek$a;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ek$a;->b()V

    :cond_1
    return-void
.end method
