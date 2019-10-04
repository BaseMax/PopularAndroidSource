.class public final Lio/reactivex/internal/operators/a/z;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "Lio/reactivex/y<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/a;


# direct methods
.method public constructor <init>(Lio/reactivex/a;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/a/z;->a:Lio/reactivex/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/a/z;->a:Lio/reactivex/a;

    new-instance v1, Lio/reactivex/internal/operators/b/i;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/b/i;-><init>(Lio/reactivex/al;)V

    invoke-virtual {v0, v1}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
