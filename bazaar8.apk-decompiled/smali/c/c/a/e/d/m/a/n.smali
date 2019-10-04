.class public Lc/c/a/e/d/m/a/n;
.super Ljava/lang/Object;
.source "PurchaseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
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
        "Lc/c/a/e/d/m/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/z/x;

.field public final synthetic b:Lc/c/a/e/d/m/a/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/a/o;Lb/z/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/n;->b:Lc/c/a/e/d/m/a/o;

    iput-object p2, p0, Lc/c/a/e/d/m/a/n;->a:Lb/z/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/m/a/n;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lc/c/a/e/d/m/a/n;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lc/c/a/e/d/m/a/n;->a:Lb/z/x;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "purchaseToken"

    .line 3
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "state"

    .line 4
    invoke-static {v2, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "userId"

    .line 5
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "purchaseTime"

    .line 6
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "packageName"

    .line 7
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "productId"

    .line 8
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "productType"

    .line 9
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "jsonPurchaseInfo"

    .line 10
    invoke-static {v2, v9}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "signature"

    .line 11
    invoke-static {v2, v10}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 12
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 16
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 18
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 20
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 21
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 22
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 23
    new-instance v12, Lc/c/a/e/d/m/a/a;

    move-object v13, v12

    invoke-direct/range {v13 .. v23}, Lc/c/a/e/d/m/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 26
    iget-object v0, v1, Lc/c/a/e/d/m/a/n;->a:Lb/z/x;

    invoke-virtual {v0}, Lb/z/x;->c()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28
    iget-object v2, v1, Lc/c/a/e/d/m/a/n;->a:Lb/z/x;

    invoke-virtual {v2}, Lb/z/x;->c()V

    .line 29
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
