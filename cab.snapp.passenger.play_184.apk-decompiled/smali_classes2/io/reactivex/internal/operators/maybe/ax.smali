.class public final Lio/reactivex/internal/operators/maybe/ax;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/ax$a;,
        Lio/reactivex/internal/operators/maybe/ax$c;,
        Lio/reactivex/internal/operators/maybe/ax$d;,
        Lio/reactivex/internal/operators/maybe/ax$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:[Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ax;->b:[Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax;->b:[Lio/reactivex/w;

    .line 46
    array-length v1, v0

    .line 50
    invoke-static {}, Lio/reactivex/internal/operators/maybe/ax;->bufferSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 51
    new-instance v2, Lio/reactivex/internal/operators/maybe/ax$c;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/maybe/ax$c;-><init>(I)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/maybe/ax$a;

    invoke-direct {v2}, Lio/reactivex/internal/operators/maybe/ax$a;-><init>()V

    .line 55
    :goto_0
    new-instance v3, Lio/reactivex/internal/operators/maybe/ax$b;

    invoke-direct {v3, p1, v1, v2}, Lio/reactivex/internal/operators/maybe/ax$b;-><init>(Lorg/b/c;ILio/reactivex/internal/operators/maybe/ax$d;)V

    .line 57
    invoke-interface {p1, v3}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 59
    iget-object p1, v3, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1181
    iget-boolean v5, v3, Lio/reactivex/internal/operators/maybe/ax$b;->g:Z

    if-nez v5, :cond_2

    .line 62
    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    invoke-interface {v4, v3}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
