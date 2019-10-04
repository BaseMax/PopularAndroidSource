.class final Lio/reactivex/internal/operators/a/d$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/a/d$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/d$a;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 236
    iput-object p1, p0, Lio/reactivex/internal/operators/a/d$a$a;->a:Lio/reactivex/internal/operators/a/d$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/a/d$a$a;->a:Lio/reactivex/internal/operators/a/d$a;

    const/4 v1, 0x0

    .line 1226
    iput-boolean v1, v0, Lio/reactivex/internal/operators/a/d$a;->k:Z

    .line 1227
    invoke-virtual {v0}, Lio/reactivex/internal/operators/a/d$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/a/d$a$a;->a:Lio/reactivex/internal/operators/a/d$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/a/d$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 241
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
