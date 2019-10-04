.class public final Lc/c/a/e/d/r/a/a/g;
.super Ljava/lang/Object;
.source "CommentActionDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/r/a/a/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/d;

.field public final d:Lb/z/C;

.field public final e:Lb/z/C;

.field public final f:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/r/a/a/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/a/a/b;-><init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/a/a/g;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/r/a/a/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/a/a/c;-><init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/a/a/g;->c:Lb/z/d;

    .line 5
    new-instance v0, Lc/c/a/e/d/r/a/a/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/a/a/d;-><init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/a/a/g;->d:Lb/z/C;

    .line 6
    new-instance v0, Lc/c/a/e/d/r/a/a/e;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/a/a/e;-><init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/a/a/g;->e:Lb/z/C;

    .line 7
    new-instance v0, Lc/c/a/e/d/r/a/a/f;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/r/a/a/f;-><init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/r/a/a/g;->f:Lb/z/C;

    return-void
.end method


# virtual methods
.method public a(I)Lc/c/a/e/d/r/a/a/l;
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM commentAction WHERE reviewId = ? and commentActionName = \'REPORT\' LIMIT 1"

    .line 47
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lb/z/x;->a(IJ)V

    .line 49
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 50
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 51
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reviewId"

    .line 52
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isReply"

    .line 53
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityType"

    .line 54
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "commentActionName"

    .line 55
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "entityDatabaseStatus"

    .line 56
    invoke-static {v3, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 57
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 58
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v14, v12

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v14, v5

    .line 60
    :goto_0
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 61
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 62
    :goto_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 63
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 64
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 65
    :cond_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 66
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v19

    .line 67
    new-instance v0, Lc/c/a/e/d/r/a/a/l;

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lc/c/a/e/d/r/a/a/l;-><init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object v0, v12

    .line 68
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 72
    throw v0
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/e/d/r/a/a/l;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM commentAction WHERE entityDatabaseStatus = ?"

    .line 17
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    .line 18
    invoke-static/range {p1 .. p1}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 19
    invoke-virtual {v2, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lb/z/x;->a(IJ)V

    .line 21
    :goto_0
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 22
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 23
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reviewId"

    .line 24
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isReply"

    .line 25
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityType"

    .line 26
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "commentActionName"

    .line 27
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "entityDatabaseStatus"

    .line 28
    invoke-static {v3, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 29
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 31
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    move-object v15, v13

    goto :goto_2

    .line 32
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v15, v12

    .line 33
    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 34
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    .line 35
    :goto_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 36
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 37
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    .line 38
    :cond_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 39
    :goto_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v20

    .line 40
    new-instance v12, Lc/c/a/e/d/r/a/a/l;

    move-object v14, v12

    invoke-direct/range {v14 .. v20}, Lc/c/a/e/d/r/a/a/l;-><init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 41
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 42
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 43
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 44
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 45
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 46
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->f:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 11
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 13
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->f:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    iget-object v2, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 15
    iget-object v2, p0, Lc/c/a/e/d/r/a/a/g;->f:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 16
    throw v1
.end method

.method public a(Lc/c/a/e/d/r/a/a/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public b(I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->d:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 9
    invoke-interface {v0, p1, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 10
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 11
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 12
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 14
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->d:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 16
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->d:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 17
    throw p1
.end method

.method public b(Lc/c/a/e/d/r/a/a/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->c:Lb/z/d;

    invoke-virtual {v0, p1}, Lb/z/d;->a(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public c(I)Lc/c/a/e/d/r/a/a/l;
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM commentAction WHERE reviewId = ? and (commentActionName = \'UP_VOTE\' or commentActionName= \'DOWN_VOTE\') LIMIT 1"

    .line 1
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 2
    invoke-virtual {v2, v0, v3, v4}, Lb/z/x;->a(IJ)V

    .line 3
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object v3, v1, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 5
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reviewId"

    .line 6
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isReply"

    .line 7
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityType"

    .line 8
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "commentActionName"

    .line 9
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "entityDatabaseStatus"

    .line 10
    invoke-static {v3, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 12
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v14, v12

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v14, v5

    .line 14
    :goto_0
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 15
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 16
    :goto_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 17
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 20
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v19

    .line 21
    new-instance v0, Lc/c/a/e/d/r/a/a/l;

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lc/c/a/e/d/r/a/a/l;-><init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object v0, v12

    .line 22
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 26
    throw v0
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/g;->e:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 3
    invoke-interface {v0, p1, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/g;->e:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    iget-object v1, p0, Lc/c/a/e/d/r/a/a/g;->e:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 11
    throw p1
.end method
