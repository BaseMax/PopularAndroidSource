.class public final Lio/reactivex/internal/operators/e/al;
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
.field final a:Lio/reactivex/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ai;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ai<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/e/al;->a:Lio/reactivex/ai;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/e/al;->a:Lio/reactivex/ai;

    new-instance v1, Lio/reactivex/internal/operators/b/i;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/b/i;-><init>(Lio/reactivex/al;)V

    invoke-virtual {v0, v1}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
