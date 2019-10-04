.class public final Lc/c/a/e/a/a/d;
.super Ljava/lang/Object;
.source "LegacyLocalDataSource.kt"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:Lc/c/a/e/a/a/c;

.field public final d:Lc/c/a/e/d/h/e/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/a/a/c;Lc/c/a/e/d/h/e/a/a/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyDb"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadDao"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/a/a/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/e/a/a/d;->c:Lc/c/a/e/a/a/c;

    iput-object p3, p0, Lc/c/a/e/a/a/d;->d:Lc/c/a/e/d/h/e/a/a/a;

    const/16 p1, 0xd

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "videoDownload.db"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "actions.db"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bazaar_downloads.db"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "bookmarked_apps.db"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "user_reviews.db"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "malicious-apps.db"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "upgradable-apps.db"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "LastPlayedVideos.db"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "uoeno.db"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "addr.db"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "resid_payment_services.db"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "inline.db"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "purchases.db"

    aput-object p3, p1, p2

    invoke-static {p1}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/a/a/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lc/c/a/e/a/a/d;->a:Ljava/util/List;

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lc/c/a/e/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v2, "n"

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "d"

    .line 4
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "sl"

    .line 5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "_id"

    .line 6
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "di"

    .line 7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "p"

    .line 8
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ex"

    .line 9
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "t"

    .line 10
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "q"

    .line 11
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "s"

    .line 12
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "c"

    .line 13
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 14
    :goto_0
    new-instance v15, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    .line 15
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "cursor.getString(columnDownloadIdIndex)"

    invoke-static {v14, v13}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v26, v5

    const-string v5, "cursor.getString(columnIdIndex)"

    invoke-static {v13, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v27, v2

    const-string v2, "cursor.getString(columnNameIndex)"

    invoke-static {v5, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v28, v3

    const-string v3, "cursor.getString(columnPathIndex)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v6

    const-string v6, "cursor.getString(columnCoverIndex)"

    invoke-static {v3, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 22
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 23
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v30, v4

    const-string v4, "cursor.getString(columnQualityIndex)"

    invoke-static {v6, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->values()[Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v4

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aget-object v24, v4, v16

    .line 25
    invoke-static {}, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->values()[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aget-object v25, v4, v16

    move-object v4, v13

    move-object v13, v15

    move-object/from16 v16, v14

    move-object v14, v4

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v23, v6

    .line 26
    invoke-direct/range {v13 .. v25}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    move/from16 v5, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v6, v29

    move/from16 v4, v30

    goto/16 :goto_0
.end method

.method public final synthetic declared-synchronized b(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p1, "SELECT * FROM videoDownload"

    .line 1
    iget-object v0, p0, Lc/c/a/e/a/a/d;->c:Lc/c/a/e/a/a/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/e/a/a/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;-><init>(Lc/c/a/e/a/a/d;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/a/a/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/db/legacy/LegacyLocalDataSource$importLegacyData$1;->label:I

    invoke-virtual {p0, v0}, Lc/c/a/e/a/a/d;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    iget-object v0, v0, Lc/c/a/e/a/a/d;->d:Lc/c/a/e/d/h/e/a/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/h/e/a/a/a;->a(Ljava/util/List;)V

    .line 7
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
