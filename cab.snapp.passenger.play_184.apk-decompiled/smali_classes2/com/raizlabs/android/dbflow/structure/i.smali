.class public abstract Lcom/raizlabs/android/dbflow/structure/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/raizlabs/android/dbflow/config/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/config/g<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/sql/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private c:Lcom/raizlabs/android/dbflow/sql/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/e;->getConfigForDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/b;->getTableConfigForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/g;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    .line 35
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->b:Lcom/raizlabs/android/dbflow/sql/b/f;

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->a:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->c:Lcom/raizlabs/android/dbflow/sql/b/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/i;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public abstract exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation
.end method

.method public getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->c:Lcom/raizlabs/android/dbflow/sql/b/b;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/b;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;-><init>(Ljava/lang/Class;)V

    .line 111
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->c:Lcom/raizlabs/android/dbflow/sql/b/b;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->c:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-object v0
.end method

.method public abstract getModelClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/b;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/f;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public abstract getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Lcom/raizlabs/android/dbflow/sql/language/u;"
        }
    .end annotation
.end method

.method public getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->b:Lcom/raizlabs/android/dbflow/sql/b/f;

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/f;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;-><init>(Ljava/lang/Class;)V

    .line 135
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->b:Lcom/raizlabs/android/dbflow/sql/b/f;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/i;->b:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/i;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 59
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/x;->select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/i;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 61
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/i;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p2, v1, p1}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            "TTModel;)V"
        }
    .end annotation
.end method

.method public setListModelLoader(Lcom/raizlabs/android/dbflow/sql/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->c:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-void
.end method

.method public setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/i;->b:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-void
.end method
