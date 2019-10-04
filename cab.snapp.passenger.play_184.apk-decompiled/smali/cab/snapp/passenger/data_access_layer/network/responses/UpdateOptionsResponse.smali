.class public Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private options:Lcab/snapp/passenger/data/models/Options;
    .annotation runtime Lcom/google/gson/a/c;
        value = "options"
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

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 21
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getTotalPrice()I
    .locals 1

    .line 31
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->totalPrice:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setTotalPrice(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->totalPrice:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateOptionsResponse{options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->options:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->totalPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
