.class public final Lcom/farsitel/bazaar/data/entity/RequestProperties;
.super Ljava/lang/Object;
.source "RequestPropertiesEntity.kt"


# instance fields
.field public final androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

.field public final clientID:Ljava/lang/String;

.field public final clientVersion:Ljava/lang/String;

.field public final clientVersionCode:J

.field public final isKidsEnabled:Z

.field public final language:I

.field public final lat:Ljava/lang/Double;

.field public final lon:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    const-string v0, "clientID"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientVersion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidClientInfo"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    iput p5, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    iput-object p6, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    iput-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    iput-object p8, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/RequestProperties;Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/RequestProperties;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-wide p3, v4

    move p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/farsitel/bazaar/data/entity/RequestProperties;->copy(Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;)Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    return v0
.end method

.method public final component5()Lcom/farsitel/bazaar/data/entity/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    return v0
.end method

.method public final component7()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public final component8()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;)Lcom/farsitel/bazaar/data/entity/RequestProperties;
    .locals 11

    const-string v0, "clientID"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientVersion"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidClientInfo"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-object v1, v0

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/farsitel/bazaar/data/entity/RequestProperties;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

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

.method public final getAndroidClientInfo()Lcom/farsitel/bazaar/data/entity/DeviceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    return-object v0
.end method

.method public final getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    return-wide v0
.end method

.method public final getLanguage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    return v0
.end method

.method public final getLat()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLon()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/DeviceInfo;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final isKidsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestProperties(clientID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->clientVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->androidClientInfo:Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isKidsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->isKidsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/RequestProperties;->lon:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
