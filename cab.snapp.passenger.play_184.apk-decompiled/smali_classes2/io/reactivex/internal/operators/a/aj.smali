.class public final Lio/reactivex/internal/operators/a/aj;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/aj$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/a/aj;->a:Lio/reactivex/g;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/a/aj;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 39
    new-instance v0, Lio/reactivex/internal/operators/a/aj$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/aj;->b:Lio/reactivex/e/h;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/a/aj$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;)V

    .line 40
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 41
    iget-object p1, p0, Lio/reactivex/internal/operators/a/aj;->a:Lio/reactivex/g;

    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
