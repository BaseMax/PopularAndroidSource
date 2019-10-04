.class public final Lio/reactivex/internal/operators/flowable/bw;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bw;->a:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw;->a:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/bw$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/bw$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
