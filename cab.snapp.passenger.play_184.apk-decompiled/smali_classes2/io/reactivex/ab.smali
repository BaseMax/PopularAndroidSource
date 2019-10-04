.class public interface abstract Lio/reactivex/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/i<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract isDisposed()Z
.end method

.method public abstract serialize()Lio/reactivex/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ab<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setCancellable(Lio/reactivex/e/f;)V
.end method

.method public abstract setDisposable(Lio/reactivex/b/c;)V
.end method

.method public abstract tryOnError(Ljava/lang/Throwable;)Z
.end method
