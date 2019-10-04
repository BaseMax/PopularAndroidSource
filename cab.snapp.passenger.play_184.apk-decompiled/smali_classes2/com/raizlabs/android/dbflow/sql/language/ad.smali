.class public final Lcom/raizlabs/android/dbflow/sql/language/ad;
.super Lcom/raizlabs/android/dbflow/sql/language/b;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/b/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/ae<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/sql/language/u;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/v;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/raizlabs/android/dbflow/sql/language/u;

.field private f:I

.field private g:I


# direct methods
.method public varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/ae;[Lcom/raizlabs/android/dbflow/sql/language/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/ae<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/b;-><init>(Ljava/lang/Class;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->f:I

    .line 47
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->g:I

    .line 57
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    .line 58
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/u;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 59
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/u;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 61
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/y;

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a ISelect"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final andAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final varargs andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
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

    .line 96
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final exists(Lcom/raizlabs/android/dbflow/sql/language/ad;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/ad;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/k;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/sql/language/k;-><init>()V

    .line 177
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/k;->where(Lcom/raizlabs/android/dbflow/sql/language/ad;)Lcom/raizlabs/android/dbflow/sql/language/k;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 191
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WHERE"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->c:Ljava/util/List;

    const-string v2, ","

    .line 192
    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GROUP BY"

    invoke-virtual {v0, v3, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 193
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HAVING"

    invoke-virtual {v0, v3, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    .line 194
    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORDER BY"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->f:I

    if-ltz v1, :cond_0

    .line 197
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIMIT"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 199
    :cond_0
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->g:I

    if-ltz v1, :cond_1

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OFFSET"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWhereBase()Lcom/raizlabs/android/dbflow/sql/language/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ae<",
            "TTModel;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    return-object v0
.end method

.method public final varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 109
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->c:Ljava/util/List;

    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/ad;
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

    .line 102
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->c:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs having([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
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

    .line 122
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final limit(I)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 158
    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->f:I

    return-object p0
.end method

.method public final offset(I)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 164
    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->g:I

    return-object p0
.end method

.method public final or(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->b:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->or(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final orderBy(Lcom/raizlabs/android/dbflow/sql/language/a/a;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/v;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final orderBy(Lcom/raizlabs/android/dbflow/sql/language/s;Z)Lcom/raizlabs/android/dbflow/sql/language/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/ad<",
            "TTModel;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/v;

    invoke-direct {v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final orderBy(Lcom/raizlabs/android/dbflow/sql/language/v;)Lcom/raizlabs/android/dbflow/sql/language/ad;
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

    .line 140
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/ad;
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

    .line 152
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final query()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    return-object v0
.end method

.method public final query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ad;->a:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/y;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/b;->query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final queryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 235
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->a(Ljava/lang/String;)V

    .line 236
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->queryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final querySingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 247
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/ad;

    .line 249
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->querySingle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
