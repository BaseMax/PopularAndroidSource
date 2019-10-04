.class public final Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
.super Ljava/lang/Object;
.source "PlayedVideoModel.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final cover:Ljava/lang/String;

.field public final date:J

.field public final entityId:Ljava/lang/String;

.field public final episodeIdx:Ljava/lang/Integer;

.field public final isLive:Z

.field public final seasonIdx:Ljava/lang/Integer;

.field public final serialId:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJ)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    iput-boolean p8, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    iput-wide p9, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v11, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p9

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v12}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 12

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-wide v10, v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    invoke-virtual/range {p0 .. p10}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJ)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/common/model/PlayedVideoType;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJ)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 12

    const-string v0, "entityId"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-object v1, v0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    return-wide v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeasonIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSerialId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/farsitel/bazaar/common/model/PlayedVideoType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public final isLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayedVideoModel(entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->serialId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->episodeIdx:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->seasonIdx:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->type:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
