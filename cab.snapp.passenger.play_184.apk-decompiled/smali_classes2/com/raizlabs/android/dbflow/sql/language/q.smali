.class public final Lcom/raizlabs/android/dbflow/sql/language/q;
.super Lcom/raizlabs/android/dbflow/sql/language/d;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/d<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private d:Lcom/raizlabs/android/dbflow/sql/language/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;-><init>(Ljava/lang/Class;)V

    .line 41
    sget-object p1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->c:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-void
.end method


# virtual methods
.method public final asColumnValues()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->asColumns()Lcom/raizlabs/android/dbflow/sql/language/q;

    .line 100
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "?"

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final asColumns()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->columns([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    return-object p0
.end method

.method public final columnValues(Landroid/content/ContentValues;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    aput-object v4, v1, v3

    .line 190
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    return-object p1
.end method

.method public final columnValues(Lcom/raizlabs/android/dbflow/sql/language/u;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/u;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->size()I

    move-result v0

    .line 169
    new-array v1, v0, [Ljava/lang/String;

    .line 170
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 174
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/language/w;->columnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 175
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/language/w;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    return-object p1
.end method

.method public final varargs columnValues([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 148
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 151
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 152
    aget-object v3, p1, v2

    .line 153
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/sql/language/w;->columnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 154
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/sql/language/w;->value()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    return-object p1
.end method

.method public final columns(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/q;->columns([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object p1

    return-object p1
.end method

.method public final varargs columns([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 73
    array-length v0, p1

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 62
    array-length v0, p1

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 63
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 65
    aget-object v2, p1, v1

    .line 66
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/structure/f;->getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final executeUpdateDelete()J
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call executeUpdateDelete() from an Insert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 1

    .line 275
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call executeUpdateDelete() from an Insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 330
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 5

    .line 285
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "INSERT "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->c:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OR"

    .line 287
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->c:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_0
    const-string v1, "INTO"

    .line 289
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 293
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    const-string v2, ")"

    if-eqz v1, :cond_1

    const-string v1, "("

    .line 294
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    check-cast v3, [Ljava/lang/Object;

    .line 295
    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/c;->appendArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/l;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto/16 :goto_2

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 306
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 308
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Insert of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when specifyingcolumns needs to have the same amount of values and columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, " VALUES("

    .line 315
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    const/4 v1, 0x0

    .line 316
    :goto_1
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-lez v1, :cond_5

    const-string v3, ",("

    .line 318
    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 320
    :cond_5
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, ", "

    invoke-static {v4, v3}, Lcom/raizlabs/android/dbflow/sql/language/c;->joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The insert of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should haveat least one value specified for the insert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->c:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public final orAbort()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v0

    return-object v0
.end method

.method public final orFail()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v0

    return-object v0
.end method

.method public final orIgnore()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v0

    return-object v0
.end method

.method public final orReplace()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v0

    return-object v0
.end method

.method public final orRollback()Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/q;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v0

    return-object v0
.end method

.method public final select(Lcom/raizlabs/android/dbflow/sql/language/l;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->d:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object p0
.end method

.method public final values(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
