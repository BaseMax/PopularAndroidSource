.class public final Lcom/farsitel/bazaar/data/entity/LocalCommentEntityKt;
.super Ljava/lang/Object;
.source "LocalCommentEntity.kt"


# direct methods
.method public static final toCommentEntity(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)Lcom/farsitel/bazaar/data/entity/CommentEntity;
    .locals 10

    const-string v0, "$this$toCommentEntity"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/CommentEntity;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityVersion()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getRate()I

    move-result v7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v8

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getEntityDatabaseStatus()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-object v0
.end method
