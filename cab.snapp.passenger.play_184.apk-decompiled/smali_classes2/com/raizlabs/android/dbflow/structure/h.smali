.class public abstract Lcom/raizlabs/android/dbflow/structure/h;
.super Lcom/raizlabs/android/dbflow/structure/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TQueryModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b<",
        "TTQueryModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTQueryModel;)Z"
        }
    .end annotation

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "QueryModels cannot check for existence"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTQueryModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "QueryModels cannot check for existence"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTQueryModel;)",
            "Lcom/raizlabs/android/dbflow/sql/language/u;"
        }
    .end annotation

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "QueryModels cannot check for existence"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
