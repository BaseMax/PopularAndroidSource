.class public final Lio/reactivex/internal/operators/b/a;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lio/reactivex/ae<",
            "+TR;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/b/a;->a:Lio/reactivex/g;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/b/a;->b:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lio/reactivex/internal/operators/b/a$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/b/a;->b:Lio/reactivex/ae;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/b/a$a;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;)V

    .line 44
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 45
    iget-object p1, p0, Lio/reactivex/internal/operators/b/a;->a:Lio/reactivex/g;

    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
