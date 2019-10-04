.class public Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private aboutContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAboutContent()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;->aboutContent:Ljava/lang/String;

    return-object v0
.end method

.method public setAboutContent(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;->aboutContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerAboutResponse{aboutContent=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;->aboutContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
