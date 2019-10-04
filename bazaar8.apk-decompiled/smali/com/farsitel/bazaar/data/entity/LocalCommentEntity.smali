.class public final Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;
.super Ljava/lang/Object;
.source "LocalCommentEntity.kt"


# instance fields
.field public entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

.field public final entityId:Ljava/lang/String;

.field public final entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public final entityVersion:J

.field public final id:Ljava/lang/Long;

.field public final rate:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    iput-object p5, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    iput p6, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    iput-object p7, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V
    .locals 10

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p8

    :goto_1
    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-object p1, v1

    move-object p2, v2

    move-wide p3, v3

    move-object p5, v5

    move p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->copy(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    return v0
.end method

.method public final component6()Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;
    .locals 10

    const-string v0, "entityId"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-object v1, v0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

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

.method public final getEntityDatabaseStatus()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method

.method public final getEntityVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEntityDatabaseStatus(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalCommentEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entityDatabaseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->entityDatabaseStatus:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
