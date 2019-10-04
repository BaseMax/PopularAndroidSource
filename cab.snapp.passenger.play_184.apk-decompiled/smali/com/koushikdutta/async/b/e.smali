.class public interface abstract Lcom/koushikdutta/async/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/a;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/a;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/b/f<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/koushikdutta/async/b/f<",
            "TT;>;>(TC;)TC;"
        }
    .end annotation
.end method

.method public abstract tryGet()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract tryGetException()Ljava/lang/Exception;
.end method
