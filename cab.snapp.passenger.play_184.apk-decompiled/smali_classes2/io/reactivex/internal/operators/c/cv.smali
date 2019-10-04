.class public final Lio/reactivex/internal/operators/c/cv;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:J


# direct methods
.method public constructor <init>(Lio/reactivex/z;JLio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 31
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cv;->b:Lio/reactivex/e/q;

    .line 32
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cv;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v5, Lio/reactivex/internal/disposables/f;

    invoke-direct {v5}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 38
    invoke-interface {p1, v5}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 40
    new-instance v7, Lio/reactivex/internal/operators/c/cv$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cv;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/cv;->b:Lio/reactivex/e/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/c/cv;->a:Lio/reactivex/ae;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/c/cv$a;-><init>(Lio/reactivex/ag;JLio/reactivex/e/q;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V

    .line 41
    invoke-virtual {v7}, Lio/reactivex/internal/operators/c/cv$a;->a()V

    return-void
.end method
