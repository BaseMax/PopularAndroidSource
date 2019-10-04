.class public final Lio/reactivex/internal/operators/maybe/bs;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/bs$a;,
        Lio/reactivex/internal/operators/maybe/bs$c;,
        Lio/reactivex/internal/operators/maybe/bs$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/w;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bs;->a:[Lio/reactivex/w;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/bs;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bs;->a:[Lio/reactivex/w;

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 43
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/maybe/av$a;

    new-instance v2, Lio/reactivex/internal/operators/maybe/bs$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/maybe/bs$a;-><init>(Lio/reactivex/internal/operators/maybe/bs;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/av$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/h;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void

    .line 47
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/maybe/bs$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/bs;->b:Lio/reactivex/e/h;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/maybe/bs$b;-><init>(Lio/reactivex/t;ILio/reactivex/e/h;)V

    .line 49
    invoke-interface {p1, v3}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 52
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/bs$b;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 56
    :cond_1
    aget-object p1, v0, v2

    if-nez p1, :cond_2

    .line 59
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lio/reactivex/internal/operators/maybe/bs$b;->a(Ljava/lang/Throwable;I)V

    return-void

    .line 62
    :cond_2
    iget-object v4, v3, Lio/reactivex/internal/operators/maybe/bs$b;->c:[Lio/reactivex/internal/operators/maybe/bs$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
