.class public Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private currentCredit:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "current_credit"
    .end annotation
.end field

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

.field private ridePrice:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_price"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
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
.method public getCurrentCredit()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->currentCredit:D

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getRidePrice()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->ridePrice:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 67
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->status:I

    return v0
.end method

.method public setCurrentCredit(D)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->currentCredit:D

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setRidePrice(D)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->ridePrice:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->status:I

    return-void
.end method
