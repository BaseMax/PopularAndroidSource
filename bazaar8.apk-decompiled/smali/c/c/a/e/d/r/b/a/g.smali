.class public Lc/c/a/e/d/r/b/a/g;
.super Ljava/lang/Object;
.source "CommentDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/b/a/h;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/z/x;

.field public final synthetic b:Lc/c/a/e/d/r/b/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/a/h;Lb/z/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/r/b/a/g;->b:Lc/c/a/e/d/r/b/a/h;

    iput-object p2, p0, Lc/c/a/e/d/r/b/a/g;->a:Lb/z/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;
    .locals 20

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lc/c/a/e/d/r/b/a/g;->b:Lc/c/a/e/d/r/b/a/h;

    invoke-static {v0}, Lc/c/a/e/d/r/b/a/h;->a(Lc/c/a/e/d/r/b/a/h;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lc/c/a/e/d/r/b/a/g;->a:Lb/z/x;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 3
    invoke-static {v2, v0}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "entityId"

    .line 4
    invoke-static {v2, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "entityVersion"

    .line 5
    invoke-static {v2, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "text"

    .line 6
    invoke-static {v2, v5}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "rate"

    .line 7
    invoke-static {v2, v6}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "entityType"

    .line 8
    invoke-static {v2, v7}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "entityDatabaseStatus"

    .line 9
    invoke-static {v2, v8}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v12, v10

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v12, v0

    .line 13
    :goto_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 17
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v10

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/f;->a(I)Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v18

    .line 20
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 22
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v19

    .line 23
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object v0, v10

    .line 24
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 25
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/r/b/a/g;->call()Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/g;->a:Lb/z/x;

    invoke-virtual {v0}, Lb/z/x;->c()V

    return-void
.end method
