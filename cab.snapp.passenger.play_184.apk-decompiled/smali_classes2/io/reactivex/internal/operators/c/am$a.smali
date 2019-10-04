.class final Lio/reactivex/internal/operators/c/am$a;
.super Lio/reactivex/internal/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/am;
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
        "Lio/reactivex/internal/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final f:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/c/a;-><init>(Lio/reactivex/ag;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/c/am$a;->f:Lio/reactivex/e/g;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/c/am$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 54
    iget v0, p0, Lio/reactivex/internal/operators/c/am$a;->e:I

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/am$a;->f:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/am$a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/c/am$a;->c:Lio/reactivex/internal/b/e;

    invoke-interface {v0}, Lio/reactivex/internal/b/e;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lio/reactivex/internal/operators/c/am$a;->f:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/am$a;->a(I)I

    move-result p1

    return p1
.end method
