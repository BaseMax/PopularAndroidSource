.class public Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private amount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field

.field private organizationId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/a/c;
        value = "organization_id"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
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
.method public getAmount()D
    .locals 2

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getOrganizationId()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->organizationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->type:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->amount:Ljava/lang/Double;

    return-void
.end method

.method public setOrganizationId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->organizationId:Ljava/lang/Integer;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InRidePaymentRequest{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", organizationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->organizationId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
