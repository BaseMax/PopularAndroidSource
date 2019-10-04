.class public abstract Lcom/raizlabs/android/dbflow/sql/language/e;
.super Lcom/raizlabs/android/dbflow/sql/language/b;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/ae<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/e;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/y;

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a Select"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 50
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->groupBy([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 44
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->groupBy([Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public varargs having([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 92
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->having([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public limit(I)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 80
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public offset(I)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 86
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->offset(I)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/a/a;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 62
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/ad;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/a/a;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/s;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 56
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/ad;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/s;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/v;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/v;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 74
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/v;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/v;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 68
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    return-object p1
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 33
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 38
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    return-object p1
.end method

.method public queryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 98
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->queryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 104
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/ad;

    .line 106
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->querySingle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/ad;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ad;-><init>(Lcom/raizlabs/android/dbflow/sql/language/ae;[Lcom/raizlabs/android/dbflow/sql/language/w;)V

    return-object v0
.end method
