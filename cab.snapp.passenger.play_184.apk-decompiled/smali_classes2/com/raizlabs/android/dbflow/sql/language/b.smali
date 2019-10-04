.class public abstract Lcom/raizlabs/android/dbflow/sql/language/b;
.super Lcom/raizlabs/android/dbflow/sql/language/d;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/d<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Lcom/raizlabs/android/dbflow/sql/b/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/structure/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Z


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

    .line 40
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    return-void
.end method

.method private a()Lcom/raizlabs/android/dbflow/structure/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    return-object v0
.end method

.method private b()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public async()Lcom/raizlabs/android/dbflow/sql/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/b/a;-><init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V

    return-object v0
.end method

.method public cursorList()Lcom/raizlabs/android/dbflow/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/raizlabs/android/dbflow/c/b$a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;-><init>(Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    .line 91
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->cacheModels(Z)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/c/b$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b$a;->build()Lcom/raizlabs/android/dbflow/c/b;

    move-result-object v0

    return-object v0
.end method

.method public disableCaching()Lcom/raizlabs/android/dbflow/sql/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    return-object p0
.end method

.method public executeUpdateDelete()J
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/b;->executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeUpdateDelete()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 115
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public flowQueryList()Lcom/raizlabs/android/dbflow/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/c<",
            "TTModel;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;-><init>(Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    .line 99
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;->cacheModels(Z)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/c$a;->build()Lcom/raizlabs/android/dbflow/c/c;

    move-result-object v0

    return-object v0
.end method

.method public queryCustomList(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<QueryClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQueryClass;>;)",
            "Ljava/util/List<",
            "TQueryClass;>;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 132
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryCustomSingle(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<QueryClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQueryClass;>;)TQueryClass;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;

    move-result-object p1

    .line 143
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/h;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public queryList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->b()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lcom/raizlabs/android/dbflow/structure/b/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->b()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->load(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryResults()Lcom/raizlabs/android/dbflow/sql/language/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/i<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/i;

    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/i;-><init>(Ljava/lang/Class;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public querySingle()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->c()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public querySingle(Lcom/raizlabs/android/dbflow/structure/b/i;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")TTModel;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->c()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->load(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
