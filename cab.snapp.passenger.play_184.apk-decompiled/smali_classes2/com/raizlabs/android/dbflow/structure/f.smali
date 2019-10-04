.class public abstract Lcom/raizlabs/android/dbflow/structure/f;
.super Lcom/raizlabs/android/dbflow/structure/b;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/structure/c<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private c:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private d:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private e:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private f:[Ljava/lang/String;

.field private g:Lcom/raizlabs/android/dbflow/structure/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field private h:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private i:Lcom/raizlabs/android/dbflow/sql/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/a<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 1102
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    if-eqz p1, :cond_0

    .line 2102
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    .line 46
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->modelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3102
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    .line 47
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->modelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 48
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/f;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 4

    .line 554
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 557
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "This method may have been called in error. The model class %1s must containan auto-incrementing or at least one primary key (if used in a ModelCache, this method may be called)"

    .line 555
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 4

    .line 561
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "This method may have been called in error. The model class %1s must containan auto-incrementing or one primary key (if used in a ModelCache, this method may be called)"

    .line 562
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TTModel;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    return-void
.end method

.method public bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/f;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V

    return-void
.end method

.method public bindToStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/f;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V

    return-void
.end method

.method public cachingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeCompiledStatement()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->c:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->c:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeDeleteStatement()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->e:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->e:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeInsertStatement()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->b:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->b:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeUpdateStatement()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->d:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->d:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public createCachingColumns()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getAutoIncrementingColumnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public createModelCache()Lcom/raizlabs/android/dbflow/structure/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation

    .line 493
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/a/e;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/a/e;-><init>(I)V

    return-object v0
.end method

.method public createWithDatabase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->delete(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->deleteAll(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
.end method

.method public getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 4

    .line 309
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "This method may have been called in error. The model class %1s must contain an autoincrementing or single int/long primary key (if used in a ModelCache, this method may be called)"

    .line 310
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 297
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/d;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)"

    .line 298
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/raizlabs/android/dbflow/structure/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCacheConverter()Lcom/raizlabs/android/dbflow/structure/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/a<",
            "*>;"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/d;

    const-string v1, "For multiple primary keys, a public static IMultiKeyCacheConverter field mustbe  marked with @MultiCacheField in the corresponding model class. The resulting keymust be a unique combination of the multiple keys, otherwise inconsistencies may occur."

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCacheSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getCachingColumnValueFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/f;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValueFromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/f;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromCursor([Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/j;)[Ljava/lang/Object;
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/f;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TTModel;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/f;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumns()[Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->createCachingColumns()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->f:[Ljava/lang/String;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getCachingId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getCachingColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCachingId([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 420
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 422
    aget-object p1, p1, v0

    return-object p1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getCacheConverter()Lcom/raizlabs/android/dbflow/structure/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/a;->getCachingKey([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->c:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/f;->getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->c:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->c:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getCompiledStatementQuery()Ljava/lang/String;
.end method

.method public abstract getCreationQuery()Ljava/lang/String;
.end method

.method public getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->e:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/f;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->e:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->e:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getDeleteStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getDeleteStatementQuery()Ljava/lang/String;
.end method

.method public getInsertOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 542
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->b:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/f;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->b:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->b:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 3519
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method public getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->i:Lcom/raizlabs/android/dbflow/sql/c/a;

    if-nez v0, :cond_0

    .line 4452
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c/a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/a;-><init>(Lcom/raizlabs/android/dbflow/sql/c/b;)V

    .line 442
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->i:Lcom/raizlabs/android/dbflow/sql/c/a;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->i:Lcom/raizlabs/android/dbflow/sql/c/a;

    return-object v0
.end method

.method public getModelCache()Lcom/raizlabs/android/dbflow/structure/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->createModelCache()Lcom/raizlabs/android/dbflow/structure/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    return-object v0
.end method

.method public getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    if-nez v0, :cond_0

    .line 4448
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;-><init>()V

    .line 434
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 435
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/f;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-object v0
.end method

.method public abstract getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
.end method

.method public getUpdateOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 535
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->d:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->d:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/f;->d:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUpdateStatementQuery()Ljava/lang/String;
.end method

.method public hasAutoIncrement(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An autoincrementing column field cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")J"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->insertAll(Ljava/util/Collection;)V

    return-void
.end method

.method public insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            ")TTModel;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/f;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            ")V"
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->cachingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/f;->a()V

    :cond_0
    return-void
.end method

.method public removeModelFromCache(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelCache()Lcom/raizlabs/android/dbflow/structure/a/c;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/c;->removeModel(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->save(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public saveAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->saveAll(Ljava/util/Collection;)V

    return-void
.end method

.method public saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setModelSaver(Lcom/raizlabs/android/dbflow/sql/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 462
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/f;->h:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/f;)V

    return-void
.end method

.method public storeModelInCache(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelCache()Lcom/raizlabs/android/dbflow/structure/a/c;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/structure/a/c;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public updateAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->updateAll(Ljava/util/Collection;)V

    return-void
.end method

.method public updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    return-void
.end method
