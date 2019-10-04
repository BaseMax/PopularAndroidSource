.class public Lc/c/a/e/d/r/b/a/d;
.super Lb/z/d;
.source "CommentDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/b/a/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/d<",
        "Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/r/b/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/r/b/a/d;->d:Lc/c/a/e/d/r/b/a/h;

    invoke-direct {p0, p2}, Lb/z/d;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityVersion()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 9
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getRate()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 13
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/f;->a(Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 16
    :goto_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityDatabaseStatus()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 17
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 19
    :goto_4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 20
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    :goto_5
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/r/b/a/d;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `comment` SET `id` = ?,`entityId` = ?,`entityVersion` = ?,`text` = ?,`rate` = ?,`entityType` = ?,`entityDatabaseStatus` = ? WHERE `id` = ?"

    return-object v0
.end method
