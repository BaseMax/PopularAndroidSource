.class public interface abstract Lcom/raizlabs/android/dbflow/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isSubscribed()Z
.end method

.method public abstract register(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setListener(Lcom/raizlabs/android/dbflow/d/g;)V
.end method

.method public abstract unregister(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unregisterAll()V
.end method
