.class public final Lc/c/a/e/d/r/b/a/h;
.super Ljava/lang/Object;
.source "CommentDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/r/b/a/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/d;

.field public final d:Lb/z/d;

.field public final e:Lb/z/C;

.field public final f:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/r/b/a/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/b/a/b;-><init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/b/a/h;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/r/b/a/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/b/a/c;-><init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/b/a/h;->c:Lb/z/d;

    .line 5
    new-instance v0, Lc/c/a/e/d/r/b/a/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/b/a/d;-><init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/b/a/h;->d:Lb/z/d;

    .line 6
    new-instance v0, Lc/c/a/e/d/r/b/a/e;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/b/a/e;-><init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/b/a/h;->e:Lb/z/C;

    .line 7
    new-instance v0, Lc/c/a/e/d/r/b/a/f;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/b/a/f;-><init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/b/a/h;->f:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/r/b/a/h;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM comment WHERE entityId = ? LIMIT 1"

    .line 52
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 55
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "comment"

    aput-object v3, v0, v2

    new-instance v3, Lc/c/a/e/d/r/b/a/g;

    invoke-direct {v3, p0, v1}, Lc/c/a/e/d/r/b/a/g;-><init>(Lc/c/a/e/d/r/b/a/h;Lb/z/x;)V

    invoke-virtual {p1, v0, v2, v3}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM comment WHERE entityDatabaseStatus = ?"

    .line 18
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    .line 19
    invoke-static/range {p1 .. p1}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 20
    invoke-virtual {v2, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lb/z/x;->a(IJ)V

    .line 22
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 23
    iget-object v0, v1, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 24
    invoke-static {v3, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "entityId"

    .line 25
    invoke-static {v3, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "entityVersion"

    .line 26
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "text"

    .line 27
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "rate"

    .line 28
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityType"

    .line 29
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "entityDatabaseStatus"

    .line 30
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 31
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 33
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    move-object v14, v12

    goto :goto_2

    .line 34
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v14, v11

    .line 35
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 37
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 38
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 39
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v12

    goto :goto_3

    .line 40
    :cond_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 41
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lc/c/a/e/f/f;->a(I)Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v20

    .line 42
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    .line 43
    :cond_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 44
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v21

    .line 45
    new-instance v11, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-object v13, v11

    invoke-direct/range {v13 .. v21}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 46
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 47
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 49
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 51
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->f:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 11
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 12
    iget-object v1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 14
    iget-object v1, p0, Lc/c/a/e/d/r/b/a/h;->f:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    iget-object v2, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 16
    iget-object v2, p0, Lc/c/a/e/d/r/b/a/h;->f:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 17
    throw v1
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->d:Lb/z/d;

    invoke-virtual {v0, p1}, Lb/z/d;->a(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM comment WHERE entityId = ? LIMIT 1"

    .line 7
    invoke-static {v3, v2}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v3

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {v3, v2}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, v2, v0}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 11
    iget-object v0, v1, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 12
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "entityId"

    .line 13
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "entityVersion"

    .line 14
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "text"

    .line 15
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "rate"

    .line 16
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityType"

    .line 17
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "entityDatabaseStatus"

    .line 18
    invoke-static {v2, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v11

    goto :goto_1

    .line 21
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v13, v0

    .line 22
    :goto_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 24
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 25
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 26
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 28
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/f;->a(I)Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v19

    .line 29
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 30
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 31
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v20

    .line 32
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    move-object v0, v11

    .line 33
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v3}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 35
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v3}, Lb/z/x;->c()V

    .line 37
    throw v0
.end method

.method public b(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/r/b/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method
