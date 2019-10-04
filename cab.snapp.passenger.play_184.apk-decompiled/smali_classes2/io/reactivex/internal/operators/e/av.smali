.class public final Lio/reactivex/internal/operators/e/av;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/av$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/e/av;->a:Lio/reactivex/ao;

    return-void
.end method

.method public static create(Lio/reactivex/ag;)Lio/reactivex/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ag<",
            "-TT;>;)",
            "Lio/reactivex/al<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/e/av$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/av$a;-><init>(Lio/reactivex/ag;)V

    return-object v0
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/e/av;->a:Lio/reactivex/ao;

    invoke-static {p1}, Lio/reactivex/internal/operators/e/av;->create(Lio/reactivex/ag;)Lio/reactivex/al;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
