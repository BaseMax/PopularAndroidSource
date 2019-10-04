.class public final Lcom/raizlabs/android/dbflow/sql/c/b;
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


# static fields
.field public static final INSERT_FAILED:I = -0x1


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/structure/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized delete(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/f;->deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 144
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/f;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 146
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeUpdateDelete()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 148
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    .line 150
    :cond_1
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/raizlabs/android/dbflow/structure/f;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/f;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 134
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getModelAdapter()Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    return-object v0
.end method

.method public final declared-synchronized insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/f;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 113
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/f;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 114
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeInsert()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/raizlabs/android/dbflow/structure/f;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 117
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/f;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 103
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized save(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    .line 30
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v2

    .line 29
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c/b;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/f;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    .line 36
    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1

    .line 35
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Landroid/content/ContentValues;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Landroid/content/ContentValues;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p0, p1, p3, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 186
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p2

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object p4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, p3, p4}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p0, p1, p3, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 55
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p2

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object p4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, p3, p4}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setModelAdapter(Lcom/raizlabs/android/dbflow/structure/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    return-void
.end method

.method public final declared-synchronized update(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 73
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Landroid/content/ContentValues;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 202
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p3, p1}, Lcom/raizlabs/android/dbflow/structure/f;->bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    .line 204
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/f;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/u;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    .line 205
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getUpdateOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->getSQLiteDatabaseAlgorithmInt(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)I

    move-result v6

    move-object v1, p2

    move-object v3, p3

    .line 203
    invoke-interface/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/b/i;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 207
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 82
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    invoke-virtual {p2, p3, p1}, Lcom/raizlabs/android/dbflow/structure/f;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 83
    invoke-interface {p3}, Lcom/raizlabs/android/dbflow/structure/b/g;->executeUpdateDelete()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 85
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/f;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
