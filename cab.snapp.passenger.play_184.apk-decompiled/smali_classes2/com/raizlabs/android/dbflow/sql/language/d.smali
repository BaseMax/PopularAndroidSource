.class public abstract Lcom/raizlabs/android/dbflow/sql/language/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/e;
.implements Lcom/raizlabs/android/dbflow/sql/language/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b/e;",
        "Lcom/raizlabs/android/dbflow/sql/language/a;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public compileStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/d;->compileStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    return-object v0
.end method

.method public compileStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Compiling Query Into Statement: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/h;

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/h;-><init>(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/sql/language/d;)V

    return-object v1
.end method

.method public count()J
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->longValue(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public execute()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method

.method public execute(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/d;->executeInsert(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeInsert(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->compileStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public hasData()Z
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasData(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 4

    .line 86
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->count(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public longValue()J
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/d;->longValue(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public longValue(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 4

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v2, "Executing query: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->longForQuery(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/d;->query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->compileStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeInsert()J

    .line 101
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing query: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->execSQL(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
