.class public Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private favId:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavId()I
    .locals 1

    .line 16
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->favId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setFavId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->favId:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerSaveFavResponse{favId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->favId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
