.class public Lcab/snapp/a/a;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private b:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/a/c;
        value = "data"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "evt_id"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "expires_in"
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAckId()I
    .locals 1

    .line 70
    iget v0, p0, Lcab/snapp/a/a;->e:I

    return v0
.end method

.method public getData()Lcom/google/gson/JsonObject;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/a/a;->b:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcab/snapp/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcab/snapp/a/a;->d:J

    return-wide v0
.end method

.method public setAckId(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcab/snapp/a/a;->e:I

    return-void
.end method

.method public setData(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/a/a;->b:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcab/snapp/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcab/snapp/a/a;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappEventModel{eventType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/a/a;->b:Lcom/google/gson/JsonObject;

    .line 83
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", eventId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
