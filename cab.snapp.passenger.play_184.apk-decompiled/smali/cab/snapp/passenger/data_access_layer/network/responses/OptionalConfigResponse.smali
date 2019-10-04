.class public Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private optionalConfig:Lcab/snapp/passenger/data/models/OptionalConfig;
    .annotation runtime Lcom/google/gson/a/c;
        value = "last_build"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;
    .locals 1

    .line 15
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->optionalConfig:Lcab/snapp/passenger/data/models/OptionalConfig;

    return-object v0
.end method

.method public setOptionalConfig(Lcab/snapp/passenger/data/models/OptionalConfig;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->optionalConfig:Lcab/snapp/passenger/data/models/OptionalConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionalConfigResponse{optionalConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->optionalConfig:Lcab/snapp/passenger/data/models/OptionalConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
