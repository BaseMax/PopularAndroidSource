.class public Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private action:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "action"
    .end annotation
.end field

.field private destination_uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_uuid"
    .end annotation
.end field

.field private origin_uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->action:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 20
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->action:I

    return v0
.end method

.method public getDestination_uuid()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->destination_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin_uuid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->origin_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setDestination_uuid(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->destination_uuid:Ljava/lang/String;

    return-void
.end method

.method public setOrigin_uuid(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->origin_uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerSmappSelectItemLogRequest{action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin_uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->origin_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destination_uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->destination_uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
