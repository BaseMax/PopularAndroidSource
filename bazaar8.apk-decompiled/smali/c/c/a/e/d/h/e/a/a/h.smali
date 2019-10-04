.class public final Lc/c/a/e/d/h/e/a/a/h;
.super Ljava/lang/Object;
.source "DownloadedVideoDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/h/e/a/a/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/d;

.field public final d:Lb/z/C;

.field public final e:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/h/e/a/a/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/a/b;-><init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/h/e/a/a/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/a/c;-><init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->c:Lb/z/d;

    .line 5
    new-instance v0, Lc/c/a/e/d/h/e/a/a/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/a/d;-><init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->d:Lb/z/C;

    .line 6
    new-instance v0, Lc/c/a/e/d/h/e/a/a/e;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/a/e;-><init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->e:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/h/e/a/a/h;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public a(J)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM downloadedVideo WHERE expirationDate <= 0 OR expirationDate > ?"

    .line 41
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v0, p1, p2}, Lb/z/x;->a(IJ)V

    .line 43
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "downloadedVideo"

    aput-object v2, p2, v0

    new-instance v2, Lc/c/a/e/d/h/e/a/a/f;

    invoke-direct {v2, p0, v1}, Lc/c/a/e/d/h/e/a/a/f;-><init>(Lc/c/a/e/d/h/e/a/a/h;Lb/z/x;)V

    invoke-virtual {p1, p2, v0, v2}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 15
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->d:Lb/z/C;

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

    .line 18
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 19
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 20
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 22
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->d:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    iget-object v1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 24
    iget-object v1, p0, Lc/c/a/e/d/h/e/a/a/h;->d:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 25
    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 27
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->e:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 28
    invoke-static {p2}, Lc/c/a/e/f/d;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 29
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 31
    invoke-interface {v0, p2}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v0, p2, p1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 33
    :goto_1
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 34
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 35
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    .line 37
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->e:Lb/z/C;

    invoke-virtual {p1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 38
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e()V

    .line 39
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/h;->e:Lb/z/C;

    invoke-virtual {p2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 40
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Iterable;)V

    .line 11
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 13
    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM downloadedVideo WHERE videoId = ?"

    .line 14
    invoke-static {v3, v2}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v3

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {v3, v2}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v3, v2, v0}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 17
    :goto_0
    iget-object v0, v1, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 18
    iget-object v0, v1, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "videoId"

    .line 19
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "downloadId"

    .line 20
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "videoName"

    .line 21
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "videoDesc"

    .line 22
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "videoPath"

    .line 23
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    .line 24
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "expirationDate"

    .line 25
    invoke-static {v2, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "shareLink"

    .line 26
    invoke-static {v2, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "qualityString"

    .line 27
    invoke-static {v2, v11}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadPriceType"

    .line 28
    invoke-static {v2, v12}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "downloadServerState"

    .line 29
    invoke-static {v2, v13}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_3

    .line 31
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 32
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 33
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 34
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 35
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 36
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 37
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 38
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 39
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 40
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v15

    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/c;->a(I)Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v27

    .line 43
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 45
    :goto_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/d;->a(I)Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v28

    .line 46
    new-instance v0, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v28}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    .line 47
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v3}, Lb/z/x;->c()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v3}, Lb/z/x;->c()V

    .line 51
    throw v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT videoId FROM downloadedVideo WHERE expirationDate > 0 AND expirationDate < ?"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0, p1, p2}, Lb/z/x;->a(IJ)V

    .line 3
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    invoke-static {p1, v1, p2}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception p2

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v1}, Lb/z/x;->c()V

    .line 13
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM downloadedVideo WHERE videoId = ?"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "downloadedVideo"

    aput-object v3, v0, v2

    new-instance v3, Lc/c/a/e/d/h/e/a/a/g;

    invoke-direct {v3, p0, v1}, Lc/c/a/e/d/h/e/a/a/g;-><init>(Lc/c/a/e/d/h/e/a/a/h;Lb/z/x;)V

    invoke-virtual {p1, v0, v2, v3}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
