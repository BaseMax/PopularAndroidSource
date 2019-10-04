.class public final Lcom/farsitel/bazaar/data/entity/CommentActionEntity;
.super Ljava/lang/Object;
.source "CommentActionEntity.kt"


# instance fields
.field public final commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

.field public entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

.field public final entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public final id:Ljava/lang/Long;

.field public final isReply:Z

.field public final reviewId:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "commentAction"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    iput p2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    iput-object p5, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V
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

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;-><init>(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/CommentActionEntity;Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/CommentActionEntity;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->copy(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    return v0
.end method

.method public final component3()Lcom/farsitel/bazaar/data/entity/CommentAction;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    return v0
.end method

.method public final component5()Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method

.method public final component6()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lcom/farsitel/bazaar/data/entity/CommentActionEntity;
    .locals 8

    const-string v0, "commentAction"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;-><init>(Ljava/lang/Long;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getCommentAction()Lcom/farsitel/bazaar/data/entity/CommentAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    return-object v0
.end method

.method public final getEntityDatabaseStatus()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReviewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isReply()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    return v0
.end method

.method public final setEntityDatabaseStatus(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentActionEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->reviewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->commentAction:Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entityDatabaseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
