.class public Lcom/apptentive/android/sdk/storage/EventRecord;
.super Ljava/lang/Object;
.source "EventRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private last:D

.field private total:J

.field private versionCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private versionNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->last:D

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCountForVersionCode(Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getCountForVersionName(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLast()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->last:D

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    return-wide v0
.end method

.method public setLast(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->last:D

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    return-void
.end method

.method public setVersionCodes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    return-void
.end method

.method public setVersionNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventRecord{last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->last:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(DLjava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    .line 48
    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->last:D

    .line 49
    iget-wide p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->total:J

    .line 50
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_1

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionNames:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/EventRecord;->versionCodes:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
