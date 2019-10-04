.class public abstract Lcom/raizlabs/android/dbflow/config/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/raizlabs/android/dbflow/structure/b/l;

.field private g:Lcom/raizlabs/android/dbflow/structure/b/f;

.field private h:Z

.field private i:Lcom/raizlabs/android/dbflow/d/a;

.field private j:Lcom/raizlabs/android/dbflow/config/b;

.field private k:Lcom/raizlabs/android/dbflow/d/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->b:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->d:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    .line 76
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/config/c;->a(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method

.method private a(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->tableConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/config/g;

    .line 89
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->tableClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/structure/f;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/f;->setListModelLoader(Lcom/raizlabs/android/dbflow/sql/b/b;)V

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 98
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/f;->setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/b/f;)V

    .line 101
    :cond_2
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->modelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->modelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/f;->setModelSaver(Lcom/raizlabs/android/dbflow/sql/c/b;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->helperListener()Lcom/raizlabs/android/dbflow/structure/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    :cond_4
    if-eqz p1, :cond_6

    .line 108
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->transactionManagerCreator()Lcom/raizlabs/android/dbflow/config/b$c;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->transactionManagerCreator()Lcom/raizlabs/android/dbflow/config/b$c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/raizlabs/android/dbflow/config/b$c;->createManager(Lcom/raizlabs/android/dbflow/config/c;)Lcom/raizlabs/android/dbflow/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->i:Lcom/raizlabs/android/dbflow/d/a;

    return-void

    .line 109
    :cond_6
    :goto_1
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/b/a/a;

    invoke-direct {p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/a;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->i:Lcom/raizlabs/android/dbflow/d/a;

    return-void
.end method


# virtual methods
.method public abstract areConsistencyChecksEnabled()Z
.end method

.method public backupDatabase()V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->backupDB()V

    return-void
.end method

.method public abstract backupEnabled()Z
.end method

.method public beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 1

    .line 276
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/c;Lcom/raizlabs/android/dbflow/config/c;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getTransactionManager()Lcom/raizlabs/android/dbflow/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/d/a;->stopQueue()V

    .line 416
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/f;

    .line 417
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->closeInsertStatement()V

    .line 418
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->closeCompiledStatement()V

    .line 419
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->closeDeleteStatement()V

    .line 420
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->closeUpdateStatement()V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->closeDB()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 402
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    .line 404
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->close()V

    .line 405
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    :cond_0
    return-void
.end method

.method public executeTransaction(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->beginTransaction()V

    .line 283
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/c;->execute(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 284
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->endTransaction()V

    throw p1
.end method

.method public abstract getAssociatedDatabaseClassFile()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getDatabaseExtensionName()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->getDatabaseExtensionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ".db"

    return-object v0
.end method

.method public getDatabaseFileName()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getDatabaseExtensionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDatabaseVersion()I
.end method

.method public declared-synchronized getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;
    .locals 2

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->helperCreator()Lcom/raizlabs/android/dbflow/config/b$b;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->helperCreator()Lcom/raizlabs/android/dbflow/config/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    invoke-interface {v0, p0, v1}, Lcom/raizlabs/android/dbflow/config/b$b;->createHelper(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/structure/b/f;)Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/k;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/structure/b/k;-><init>(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/structure/b/f;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->performRestoreFromBackup()V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMigrations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/a/a;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getModelAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TT;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/f;

    return-object p1
.end method

.method public getModelAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/f;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getModelClasses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelNotifier()Lcom/raizlabs/android/dbflow/d/e;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->k:Lcom/raizlabs/android/dbflow/d/e;

    if-nez v0, :cond_2

    .line 263
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->modelNotifier()Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->modelNotifier()Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->k:Lcom/raizlabs/android/dbflow/d/e;

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/d/b;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/d/b;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->k:Lcom/raizlabs/android/dbflow/d/e;

    .line 271
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->k:Lcom/raizlabs/android/dbflow/d/e;

    return-object v0
.end method

.method public getModelQueryAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/h;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelViewAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/g<",
            "TT;>;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/g;

    return-object p1
.end method

.method public getModelViewAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/g;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getQueryModelAdapterForQueryClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/h<",
            "TT;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/h;

    return-object p1
.end method

.method public getTransactionManager()Lcom/raizlabs/android/dbflow/d/a;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->i:Lcom/raizlabs/android/dbflow/d/a;

    return-object v0
.end method

.method public getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->getDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    return-object v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public abstract isForeignKeysSupported()Z
.end method

.method public isInMemory()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reopen()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/c;->reopen(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method

.method public reopen(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->close()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    .line 385
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/config/c;->a(Lcom/raizlabs/android/dbflow/config/b;)V

    .line 386
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/l;->getDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/c;->reset(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->j:Lcom/raizlabs/android/dbflow/config/b;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/config/c;->reset(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method

.method public reset(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Z

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->destroy()V

    .line 373
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/config/c;->a(Lcom/raizlabs/android/dbflow/config/b;)V

    .line 374
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getHelper()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/l;->getDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    :cond_0
    return-void
.end method
