.class public final Lc/c/a/e/d/b/V;
.super Ljava/lang/Object;
.source "UpgradableAppDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/b/L;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/e;

.field public final d:Lb/z/d;

.field public final e:Lb/z/C;

.field public final f:Lb/z/C;

.field public final g:Lb/z/C;

.field public final h:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/b/M;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/M;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/b/N;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/N;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->c:Lb/z/e;

    .line 5
    new-instance v0, Lc/c/a/e/d/b/O;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/O;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->d:Lb/z/d;

    .line 6
    new-instance v0, Lc/c/a/e/d/b/P;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/P;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->e:Lb/z/C;

    .line 7
    new-instance v0, Lc/c/a/e/d/b/Q;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/Q;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->f:Lb/z/C;

    .line 8
    new-instance v0, Lc/c/a/e/d/b/S;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/S;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->g:Lb/z/C;

    .line 9
    new-instance v0, Lc/c/a/e/d/b/T;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/b/T;-><init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/b/V;->h:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/b/V;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM upgradable_app ORDER BY packageName"

    .line 27
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "upgradable_app"

    aput-object v4, v3, v0

    new-instance v4, Lc/c/a/e/d/b/U;

    invoke-direct {v4, p0, v1}, Lc/c/a/e/d/b/U;-><init>(Lc/c/a/e/d/b/V;Lb/z/x;)V

    invoke-virtual {v2, v3, v0, v4}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM upgradable_app WHERE packageName = ?"

    .line 29
    invoke-static {v3, v2}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v3

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {v3, v2}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3, v2, v0}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 32
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 33
    iget-object v0, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "packageName"

    .line 34
    invoke-static {v5, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "versionCode"

    .line 35
    invoke-static {v5, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "packageWolf"

    .line 36
    invoke-static {v5, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isNotified"

    .line 37
    invoke-static {v5, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "isUpdateEnabled"

    .line 38
    invoke-static {v5, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "lastUpdateTime"

    .line 39
    invoke-static {v5, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 40
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 41
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 42
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 43
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 44
    :goto_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 45
    :goto_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 46
    :goto_3
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 47
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 48
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v3}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v3}, Lb/z/x;->c()V

    .line 52
    throw v0
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/b/V;->c:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 13
    throw p1
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 14
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 15
    iget-object v0, p0, Lc/c/a/e/d/b/V;->f:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 16
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 18
    invoke-interface {v0, p1, p2, p3}, Lb/C/a/d;->a(IJ)V

    .line 19
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 20
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 21
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 23
    iget-object p1, p0, Lc/c/a/e/d/b/V;->f:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iget-object p2, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 25
    iget-object p2, p0, Lc/c/a/e/d/b/V;->f:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 26
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/b/V;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Iterable;)V

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT versionCode FROM upgradable_app WHERE packageName = ?"

    .line 25
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 28
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->b()V

    .line 29
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 30
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v1}, Lb/z/x;->c()V

    .line 37
    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM upgradable_app WHERE isUpdateEnabled = 1 AND isNotified = 0"

    .line 1
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v3, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-static {v3, v2, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "packageName"

    .line 4
    invoke-static {v3, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "versionCode"

    .line 5
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "packageWolf"

    .line 6
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isNotified"

    .line 7
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isUpdateEnabled"

    .line 8
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastUpdateTime"

    .line 9
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 12
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 14
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 15
    :goto_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 16
    :goto_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    const/16 v18, 0x1

    goto :goto_3

    :cond_2
    const/16 v18, 0x0

    .line 17
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 18
    new-instance v11, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-object v12, v11

    invoke-direct/range {v12 .. v20}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V

    .line 19
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 24
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/V;->g:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 5
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    iget-object v1, p0, Lc/c/a/e/d/b/V;->g:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object v2, p0, Lc/c/a/e/d/b/V;->g:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 10
    throw v1
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/V;->h:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 5
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    iget-object v1, p0, Lc/c/a/e/d/b/V;->h:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object v2, p0, Lc/c/a/e/d/b/V;->h:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 10
    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM upgradable_app"

    .line 1
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v3, v1, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-static {v3, v2, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "packageName"

    .line 4
    invoke-static {v3, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "versionCode"

    .line 5
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "packageWolf"

    .line 6
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isNotified"

    .line 7
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isUpdateEnabled"

    .line 8
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastUpdateTime"

    .line 9
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 12
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 14
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 15
    :goto_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 16
    :goto_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    const/16 v18, 0x1

    goto :goto_3

    :cond_2
    const/16 v18, 0x0

    .line 17
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 18
    new-instance v11, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-object v12, v11

    invoke-direct/range {v12 .. v20}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V

    .line 19
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 24
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/V;->e:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 7
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object p1, p0, Lc/c/a/e/d/b/V;->e:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lc/c/a/e/d/b/V;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 11
    iget-object v1, p0, Lc/c/a/e/d/b/V;->e:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 12
    throw p1
.end method
