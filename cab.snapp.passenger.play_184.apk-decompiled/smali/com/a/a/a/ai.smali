.class final Lcom/a/a/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/b/a<",
        "Lcom/a/a/a/ag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildJsonForEvent(Lcom/a/a/a/ag;)Lorg/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :try_start_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    .line 45
    iget-object v1, p1, Lcom/a/a/a/ag;->sessionEventMetadata:Lcom/a/a/a/ah;

    const-string v2, "appBundleId"

    .line 46
    iget-object v3, v1, Lcom/a/a/a/ah;->appBundleId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "executionId"

    .line 47
    iget-object v3, v1, Lcom/a/a/a/ah;->executionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "installationId"

    .line 48
    iget-object v3, v1, Lcom/a/a/a/ah;->installationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "androidId"

    .line 49
    iget-object v3, v1, Lcom/a/a/a/ah;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "advertisingId"

    .line 50
    iget-object v3, v1, Lcom/a/a/a/ah;->advertisingId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "limitAdTrackingEnabled"

    .line 51
    iget-object v3, v1, Lcom/a/a/a/ah;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "betaDeviceToken"

    .line 52
    iget-object v3, v1, Lcom/a/a/a/ah;->betaDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "buildId"

    .line 53
    iget-object v3, v1, Lcom/a/a/a/ah;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "osVersion"

    .line 54
    iget-object v3, v1, Lcom/a/a/a/ah;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "deviceModel"

    .line 55
    iget-object v3, v1, Lcom/a/a/a/ah;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "appVersionCode"

    .line 56
    iget-object v3, v1, Lcom/a/a/a/ah;->appVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v2, "appVersionName"

    .line 57
    iget-object v1, v1, Lcom/a/a/a/ah;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "timestamp"

    .line 58
    iget-wide v2, p1, Lcom/a/a/a/ag;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    const-string v1, "type"

    .line 59
    iget-object v2, p1, Lcom/a/a/a/ag;->type:Lcom/a/a/a/ag$b;

    invoke-virtual {v2}, Lcom/a/a/a/ag$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 60
    iget-object v1, p1, Lcom/a/a/a/ag;->details:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v1, "details"

    .line 61
    new-instance v2, Lorg/a/c;

    iget-object v3, p1, Lcom/a/a/a/ag;->details:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    :cond_0
    const-string v1, "customType"

    .line 63
    iget-object v2, p1, Lcom/a/a/a/ag;->customType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 64
    iget-object v1, p1, Lcom/a/a/a/ag;->customAttributes:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, "customAttributes"

    .line 65
    new-instance v2, Lorg/a/c;

    iget-object v3, p1, Lcom/a/a/a/ag;->customAttributes:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    :cond_1
    const-string v1, "predefinedType"

    .line 67
    iget-object v2, p1, Lcom/a/a/a/ag;->predefinedType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 68
    iget-object v1, p1, Lcom/a/a/a/ag;->predefinedAttributes:Ljava/util/Map;

    if-eqz v1, :cond_2

    const-string v1, "predefinedAttributes"

    .line 69
    new-instance v2, Lorg/a/c;

    iget-object p1, p1, Lcom/a/a/a/ag;->predefinedAttributes:Ljava/util/Map;

    invoke-direct {v2, p1}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 74
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/a/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 76
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/a/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toBytes(Lcom/a/a/a/ag;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/a/a/a/ai;->buildJsonForEvent(Lcom/a/a/a/ag;)Lorg/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/a/a/a/ag;

    invoke-virtual {p0, p1}, Lcom/a/a/a/ai;->toBytes(Lcom/a/a/a/ag;)[B

    move-result-object p1

    return-object p1
.end method
