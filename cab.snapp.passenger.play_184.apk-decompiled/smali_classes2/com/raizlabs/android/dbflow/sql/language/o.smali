.class public final Lcom/raizlabs/android/dbflow/sql/language/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->d:Z

    .line 35
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->a:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final and(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final and(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final disable()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/sql/d;->dropIndex(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)V

    return-void
.end method

.method public final disable(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->dropIndex(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)V

    return-void
.end method

.method public final enable()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->enable(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public final enable(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/o;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->execSQL(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There should be at least one column in this index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please call on() to set a table to use this index on."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getIndexName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "CREATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "UNIQUE "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 160
    :goto_0
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "INDEX IF NOT EXISTS "

    .line 161
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->a:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, " ON "

    .line 163
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "("

    .line 164
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendList(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final isUnique()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->d:Z

    return v0
.end method

.method public final varargs on(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;[Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            "[",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    .line 77
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/o;->and(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 78
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    .line 79
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->and(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/o;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs on(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->b:Ljava/lang/Class;

    .line 61
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 62
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/o;->and(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final unique(Z)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 47
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/o;->d:Z

    return-object p0
.end method
