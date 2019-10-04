.class public Lcab/snapp/passenger/data/models/SnappPusher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "app_key"
    .end annotation
.end field

.field private authUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "auth_url"
    .end annotation
.end field

.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "channel"
    .end annotation
.end field

.field private cluster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cluster"
    .end annotation
.end field

.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->authUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCluster()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->cluster:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/SnappPusher;->isEnabled:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAuthUrl(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->authUrl:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCluster(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->cluster:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->isEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPusher{appKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/SnappPusher;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SnappPusher;->channel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SnappPusher;->authUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data/models/SnappPusher;->isEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cluster=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SnappPusher;->cluster:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
