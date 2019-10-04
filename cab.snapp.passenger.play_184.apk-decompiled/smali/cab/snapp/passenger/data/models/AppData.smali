.class public Lcab/snapp/passenger/data/models/AppData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latestSupportedVersionCode:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "supported"
    .end annotation
.end field

.field private latestVersionCode:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "latest"
    .end annotation
.end field

.field private updateUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "update_uri"
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
.method public getLatestSupportedVersionCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcab/snapp/passenger/data/models/AppData;->latestSupportedVersionCode:I

    return v0
.end method

.method public getLatestVersionCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcab/snapp/passenger/data/models/AppData;->latestVersionCode:I

    return v0
.end method

.method public getUpdateUri()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AppData;->updateUri:Ljava/lang/String;

    return-object v0
.end method

.method public setLatestSupportedVersionCode(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcab/snapp/passenger/data/models/AppData;->latestSupportedVersionCode:I

    return-void
.end method

.method public setLatestVersionCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcab/snapp/passenger/data/models/AppData;->latestVersionCode:I

    return-void
.end method

.method public setUpdateUri(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AppData;->updateUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppData{latestVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data/models/AppData;->latestVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latestSupportedVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/AppData;->latestSupportedVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/AppData;->updateUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
