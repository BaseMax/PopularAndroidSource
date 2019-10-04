.class public Lcab/snapp/passenger/data/models/SafeCall;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canCall:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "can_call"
    .end annotation
.end field

.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "enabled"
    .end annotation
.end field

.field private timeOut:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "timeout"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "token"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeOut()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/SafeCall;->timeOut:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SafeCall;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SafeCall;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isCanCallEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/SafeCall;->canCall:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/SafeCall;->isEnabled:Z

    return v0
.end method

.method public setCanCall(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/SafeCall;->canCall:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/SafeCall;->isEnabled:Z

    return-void
.end method

.method public setTimeOut(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/SafeCall;->timeOut:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SafeCall;->token:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SafeCall;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SafeCall{uri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/SafeCall;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeOut="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcab/snapp/passenger/data/models/SafeCall;->timeOut:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data/models/SafeCall;->isEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canCall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data/models/SafeCall;->canCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SafeCall;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
