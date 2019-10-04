.class public final Lcom/farsitel/bazaar/data/entity/WaitingTime;
.super Ljava/lang/Object;
.source "WaitingTime.kt"


# instance fields
.field public final value:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    return-void
.end method

.method public static final synthetic box-impl(J)Lcom/farsitel/bazaar/data/entity/WaitingTime;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/entity/WaitingTime;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lcom/farsitel/bazaar/data/entity/WaitingTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/farsitel/bazaar/data/entity/WaitingTime;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->unbox-impl()J

    move-result-wide v2

    const/4 p2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return p2

    :cond_1
    return v1
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static hashCode-impl(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaitingTime(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    invoke-static {v0, v1, p1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/WaitingTime;->value:J

    return-wide v0
.end method
