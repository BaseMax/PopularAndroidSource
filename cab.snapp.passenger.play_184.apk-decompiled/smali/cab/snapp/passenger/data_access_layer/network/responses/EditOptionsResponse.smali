.class public Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "tag"
    .end annotation
.end field

.field private totalPrice:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "final"
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
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()I
    .locals 1

    .line 30
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->totalPrice:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTotalPrice(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->totalPrice:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EditOptionsResponse{tag=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->totalPrice:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
