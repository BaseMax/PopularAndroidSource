.class public interface abstract Lcom/raizlabs/android/dbflow/sql/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b/e;"
    }
.end annotation


# virtual methods
.method public abstract async()Lcom/raizlabs/android/dbflow/sql/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract cursorList()Lcom/raizlabs/android/dbflow/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract disableCaching()Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract flowQueryList()Lcom/raizlabs/android/dbflow/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/c<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract getTable()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryCustomList(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TQueryModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTQueryModel;>;)",
            "Ljava/util/List<",
            "TTQueryModel;>;"
        }
    .end annotation
.end method

.method public abstract queryCustomSingle(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TQueryModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTQueryModel;>;)TTQueryModel;"
        }
    .end annotation
.end method

.method public abstract queryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryList(Lcom/raizlabs/android/dbflow/structure/b/i;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryResults()Lcom/raizlabs/android/dbflow/sql/language/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/i<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract querySingle()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation
.end method

.method public abstract querySingle(Lcom/raizlabs/android/dbflow/structure/b/i;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")TTModel;"
        }
    .end annotation
.end method
