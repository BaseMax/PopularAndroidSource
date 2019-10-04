.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/language/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Lcom/raizlabs/android/dbflow/sql/language/m;"
    }
.end annotation


# virtual methods
.method public abstract between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation
.end method
