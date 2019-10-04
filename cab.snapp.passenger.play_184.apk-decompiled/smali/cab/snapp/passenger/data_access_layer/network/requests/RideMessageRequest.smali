.class public Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private messageId:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "message_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 27
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->messageId:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->messageId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerRideMessageRequest{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->messageId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
