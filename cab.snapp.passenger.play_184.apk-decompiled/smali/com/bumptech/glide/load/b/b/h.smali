.class public interface abstract Lcom/bumptech/glide/load/b/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/h$a;
    }
.end annotation


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract getCurrentSize()J
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;)",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/load/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            ")",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract setResourceRemovedListener(Lcom/bumptech/glide/load/b/b/h$a;)V
.end method

.method public abstract setSizeMultiplier(F)V
.end method

.method public abstract trimMemory(I)V
.end method
