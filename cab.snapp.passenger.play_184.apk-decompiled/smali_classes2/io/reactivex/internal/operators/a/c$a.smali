.class final Lio/reactivex/internal/operators/a/c$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final synthetic b:Lio/reactivex/internal/operators/a/c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/c;Lio/reactivex/d;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lio/reactivex/internal/operators/a/c$a;->b:Lio/reactivex/internal/operators/a/c;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 155
    iput-object p2, p0, Lio/reactivex/internal/operators/a/c$a;->a:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/a/c$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/a/c$a;->b:Lio/reactivex/internal/operators/a/c;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/a/c;->a(Lio/reactivex/internal/operators/a/c$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/c$a;->get()Z

    move-result v0

    return v0
.end method
