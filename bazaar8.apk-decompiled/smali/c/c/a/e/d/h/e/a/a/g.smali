.class public Lc/c/a/e/d/h/e/a/a/g;
.super Ljava/lang/Object;
.source "DownloadedVideoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/e/a/a/h;->c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/z/x;

.field public final synthetic b:Lc/c/a/e/d/h/e/a/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a/h;Lb/z/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/g;->b:Lc/c/a/e/d/h/e/a/a/h;

    iput-object p2, p0, Lc/c/a/e/d/h/e/a/a/g;->a:Lb/z/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;
    .locals 28

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lc/c/a/e/d/h/e/a/a/g;->b:Lc/c/a/e/d/h/e/a/a/h;

    invoke-static {v0}, Lc/c/a/e/d/h/e/a/a/h;->a(Lc/c/a/e/d/h/e/a/a/h;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lc/c/a/e/d/h/e/a/a/g;->a:Lb/z/x;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "videoId"

    .line 3
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "downloadId"

    .line 4
    invoke-static {v2, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "videoName"

    .line 5
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "videoDesc"

    .line 6
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "videoPath"

    .line 7
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "coverUrl"

    .line 8
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "expirationDate"

    .line 9
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "shareLink"

    .line 10
    invoke-static {v2, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "qualityString"

    .line 11
    invoke-static {v2, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "downloadPriceType"

    .line 12
    invoke-static {v2, v11}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadServerState"

    .line 13
    invoke-static {v2, v12}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    .line 15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 17
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 20
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 21
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 22
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 23
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 24
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v14

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/c;->a(I)Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v26

    .line 27
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 29
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/d;->a(I)Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v27

    .line 30
    new-instance v0, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object v0, v14

    .line 31
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 32
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/a/a/g;->call()Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/g;->a:Lb/z/x;

    invoke-virtual {v0}, Lb/z/x;->c()V

    return-void
.end method
