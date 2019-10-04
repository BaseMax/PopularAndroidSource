.class public final Lc/c/a/e/d/r/a/a/l;
.super Ljava/lang/Object;
.source "CommentActionEntity.kt"


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "commentActionName"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    iput p2, p0, Lc/c/a/e/d/r/a/a/l;->b:I

    iput-boolean p3, p0, Lc/c/a/e/d/r/a/a/l;->c:Z

    iput p4, p0, Lc/c/a/e/d/r/a/a/l;->d:I

    iput-object p5, p0, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    iput-object p6, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_1

    .line 2
    sget-object p6, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lc/c/a/e/d/r/a/a/l;-><init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public final b()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/d/r/a/a/l;->d:I

    return v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/d/r/a/a/l;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lc/c/a/e/d/r/a/a/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lc/c/a/e/d/r/a/a/l;

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    iget-object v3, p1, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/r/a/a/l;->b:I

    iget v3, p1, Lc/c/a/e/d/r/a/a/l;->b:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lc/c/a/e/d/r/a/a/l;->c:Z

    iget-boolean v3, p1, Lc/c/a/e/d/r/a/a/l;->c:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/r/a/a/l;->d:I

    iget v3, p1, Lc/c/a/e/d/r/a/a/l;->d:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    iget-object p1, p1, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/d/r/a/a/l;->c:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/r/a/a/l;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/r/a/a/l;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/r/a/a/l;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalCommentActionEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/a/a/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/r/a/a/l;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/a/a/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commentActionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityDatabaseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a/a/l;->f:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
