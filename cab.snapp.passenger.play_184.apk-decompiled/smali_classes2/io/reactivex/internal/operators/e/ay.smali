.class public final Lio/reactivex/internal/operators/e/ay;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/ay$a;,
        Lio/reactivex/internal/operators/e/ay$c;,
        Lio/reactivex/internal/operators/e/ay$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ao<",
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
.method public constructor <init>([Lio/reactivex/ao;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ay;->a:[Lio/reactivex/ao;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/e/ay;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ay;->a:[Lio/reactivex/ao;

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 43
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/e/ak$a;

    new-instance v2, Lio/reactivex/internal/operators/e/ay$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/e/ay$a;-><init>(Lio/reactivex/internal/operators/e/ay;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/e/ak$a;-><init>(Lio/reactivex/al;Lio/reactivex/e/h;)V

    invoke-interface {v0, v1}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void

    .line 47
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/e/ay$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/e/ay;->b:Lio/reactivex/e/h;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/e/ay$b;-><init>(Lio/reactivex/al;ILio/reactivex/e/h;)V

    .line 49
    invoke-interface {p1, v3}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 52
    invoke-virtual {v3}, Lio/reactivex/internal/operators/e/ay$b;->isDisposed()Z

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

    invoke-virtual {v3, p1, v2}, Lio/reactivex/internal/operators/e/ay$b;->a(Ljava/lang/Throwable;I)V

    return-void

    .line 63
    :cond_2
    iget-object v4, v3, Lio/reactivex/internal/operators/e/ay$b;->c:[Lio/reactivex/internal/operators/e/ay$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
