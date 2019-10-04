.class abstract Lio/reactivex/internal/e/q$f;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 160
    sget-object v0, Lio/reactivex/internal/e/q;->b:Lio/reactivex/b/c;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lio/reactivex/ah$c;Lio/reactivex/d;)Lio/reactivex/b/c;
.end method

.method final b(Lio/reactivex/ah$c;Lio/reactivex/d;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/e/q$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    .line 166
    sget-object v1, Lio/reactivex/internal/e/q;->c:Lio/reactivex/b/c;

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    sget-object v1, Lio/reactivex/internal/e/q;->b:Lio/reactivex/b/c;

    if-eq v0, v1, :cond_1

    return-void

    .line 177
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/e/q$f;->a(Lio/reactivex/ah$c;Lio/reactivex/d;)Lio/reactivex/b/c;

    move-result-object p1

    .line 179
    sget-object p2, Lio/reactivex/internal/e/q;->b:Lio/reactivex/b/c;

    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/e/q$f;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 184
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 199
    sget-object v0, Lio/reactivex/internal/e/q;->c:Lio/reactivex/b/c;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/e/q$f;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/b/c;

    .line 202
    sget-object v2, Lio/reactivex/internal/e/q;->c:Lio/reactivex/b/c;

    if-ne v1, v2, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/e/q$f;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v0, Lio/reactivex/internal/e/q;->b:Lio/reactivex/b/c;

    if-eq v1, v0, :cond_2

    .line 210
    invoke-interface {v1}, Lio/reactivex/b/c;->dispose()V

    :cond_2
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lio/reactivex/internal/e/q$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method
