.class public Lc/c/a/e/d/b/h;
.super Ljava/lang/Object;
.source "DownloadedAppDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/i;->a()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/z/x;

.field public final synthetic b:Lc/c/a/e/d/b/i;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/i;Lb/z/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/b/h;->b:Lc/c/a/e/d/b/i;

    iput-object p2, p0, Lc/c/a/e/d/b/h;->a:Lb/z/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/b/h;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/h;->b:Lc/c/a/e/d/b/i;

    invoke-static {v0}, Lc/c/a/e/d/b/i;->a(Lc/c/a/e/d/b/i;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/e/d/b/h;->a:Lb/z/x;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "packageName"

    .line 3
    invoke-static {v0, v1}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "name"

    .line 4
    invoke-static {v0, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "packageWolf"

    .line 5
    invoke-static {v0, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "createdAt"

    .line 6
    invoke-static {v0, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 12
    :goto_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 13
    new-instance v7, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 14
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v6

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 16
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/h;->a:Lb/z/x;

    invoke-virtual {v0}, Lb/z/x;->c()V

    return-void
.end method
