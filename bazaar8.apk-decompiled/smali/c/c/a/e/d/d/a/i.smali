.class public final Lc/c/a/e/d/d/a/i;
.super Ljava/lang/Object;
.source "BookmarkDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/d/a/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/e;

.field public final d:Lb/z/d;

.field public final e:Lb/z/C;

.field public final f:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/d/a/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/d/a/b;-><init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/d/a/i;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/d/a/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/d/a/c;-><init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/d/a/i;->c:Lb/z/e;

    .line 5
    new-instance v0, Lc/c/a/e/d/d/a/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/d/a/d;-><init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/d/a/i;->d:Lb/z/d;

    .line 6
    new-instance v0, Lc/c/a/e/d/d/a/e;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/d/a/e;-><init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/d/a/i;->e:Lb/z/C;

    .line 7
    new-instance v0, Lc/c/a/e/d/d/a/f;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/d/a/f;-><init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/d/a/i;->f:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/d/a/i;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lc/c/a/e/d/d/a/j;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM bookmark WHERE bookmarkStatus = ?"

    .line 24
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 25
    invoke-static {p1}, Lc/c/a/e/f/b;->a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lb/z/x;->a(IJ)V

    .line 28
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bookmark"

    aput-object v3, v0, v2

    new-instance v3, Lc/c/a/e/d/d/a/h;

    invoke-direct {v3, p0, v1}, Lc/c/a/e/d/d/a/h;-><init>(Lc/c/a/e/d/d/a/i;Lb/z/x;)V

    invoke-virtual {p1, v0, v2, v3}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lc/c/a/e/d/d/a/j;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM bookmark WHERE entityId = ?"

    .line 62
    invoke-static {v3, v2}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v3

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {v3, v2}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v3, v2, v0}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 65
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 66
    iget-object v0, v1, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "entityId"

    .line 67
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "iconUrl"

    .line 68
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "entityName"

    .line 69
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "price"

    .line 70
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "priceString"

    .line 71
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bookmarkStatus"

    .line 72
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "entityDatabaseStatus"

    .line 73
    invoke-static {v2, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 75
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 76
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 78
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 79
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 80
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v11

    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/b;->a(I)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object v18

    .line 83
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 84
    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 85
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v19

    .line 86
    new-instance v0, Lc/c/a/e/d/d/a/j;

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object v0, v11

    .line 87
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-virtual {v3}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {v3}, Lb/z/x;->c()V

    .line 91
    throw v0
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/e/d/d/a/j;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM bookmark WHERE entityDatabaseStatus = ?"

    .line 29
    invoke-static {v2, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v2

    .line 30
    invoke-static/range {p1 .. p1}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {v2, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lb/z/x;->a(IJ)V

    .line 33
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 34
    iget-object v0, v1, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "entityId"

    .line 35
    invoke-static {v3, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "iconUrl"

    .line 36
    invoke-static {v3, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "entityName"

    .line 37
    invoke-static {v3, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "price"

    .line 38
    invoke-static {v3, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "priceString"

    .line 39
    invoke-static {v3, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bookmarkStatus"

    .line 40
    invoke-static {v3, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "entityDatabaseStatus"

    .line 41
    invoke-static {v3, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 42
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 44
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 45
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 46
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 47
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 48
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 49
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    move-object v11, v12

    goto :goto_2

    .line 50
    :cond_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 51
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lc/c/a/e/f/b;->a(I)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object v18

    .line 52
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    .line 53
    :cond_2
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 54
    :goto_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v19

    .line 55
    new-instance v11, Lc/c/a/e/d/d/a/j;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 56
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 57
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 58
    invoke-virtual {v2}, Lb/z/x;->c()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 59
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 60
    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 61
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public a()V
    .locals 3

    .line 14
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 15
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->f:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 17
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 18
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 20
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->f:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 21
    iget-object v2, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 22
    iget-object v2, p0, Lc/c/a/e/d/d/a/i;->f:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 23
    throw v1
.end method

.method public a(Lc/c/a/e/d/d/a/j;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/d/a/j;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->c:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Iterable;)V

    .line 11
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 13
    throw p1
.end method

.method public b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT entityId from bookmark WHERE entityId = ? AND bookmarkStatus = 0"

    .line 7
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bookmark"

    aput-object v3, v0, v2

    new-instance v3, Lc/c/a/e/d/d/a/g;

    invoke-direct {v3, p0, v1}, Lc/c/a/e/d/d/a/g;-><init>(Lc/c/a/e/d/d/a/i;Lb/z/x;)V

    invoke-virtual {p1, v0, v2, v3}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/c/a/e/d/d/a/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->d:Lb/z/d;

    invoke-virtual {v0, p1}, Lb/z/d;->a(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/d/a/i;->e:Lb/z/C;

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
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 7
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object p1, p0, Lc/c/a/e/d/d/a/i;->e:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 11
    iget-object v1, p0, Lc/c/a/e/d/d/a/i;->e:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 12
    throw p1
.end method
