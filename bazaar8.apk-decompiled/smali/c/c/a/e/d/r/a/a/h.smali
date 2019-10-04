.class public final Lc/c/a/e/d/r/a/a/h;
.super Ljava/lang/Object;
.source "CommentActionEntity.kt"


# direct methods
.method public static final a(Lc/c/a/e/d/r/a/a/l;)Lcom/farsitel/bazaar/data/entity/CommentActionEntity;
    .locals 8

    const-string v0, "$this$toCommentActionEntity"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->e()I

    move-result v3

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/farsitel/bazaar/data/entity/CommentAction;->valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/CommentAction;

    move-result-object v4

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->f()Z

    move-result v5

    invoke-static {}, Lcom/farsitel/bazaar/data/entity/EntityType;->values()[Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v1

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->c()I

    move-result v6

    aget-object v6, v1, v6

    invoke-virtual {p0}, Lc/c/a/e/d/r/a/a/l;->b()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;-><init>(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-object v0
.end method
