.class public final Lio/reactivex/internal/operators/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/c/d;->a:Lio/reactivex/ae;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/c/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lio/reactivex/internal/operators/c/d$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/d;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/d$a;-><init>(Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lio/reactivex/internal/operators/c/d;->a:Lio/reactivex/ae;

    invoke-interface {v1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 51
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/d$a;->getIterable()Lio/reactivex/internal/operators/c/d$a$a;

    move-result-object v0

    return-object v0
.end method
