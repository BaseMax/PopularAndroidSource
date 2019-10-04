.class public Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apReceipt:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap"
    .end annotation
.end field

.field private canPayInCash:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "can_pay_in_cash"
    .end annotation
.end field

.field private currentCredit:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "current_credit"
    .end annotation
.end field

.field private donation:Lcab/snapp/passenger/data/models/Donation;
    .annotation runtime Lcom/google/gson/a/c;
        value = "donation"
    .end annotation
.end field

.field private isApWalletRegistered:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_authorized"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private paymentTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "payment_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;"
        }
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
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->currentCredit:D

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->ridePrice:D

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->message:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->status:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->canPayInCash:Z

    .line 46
    const-class v0, Lcab/snapp/passenger/data/models/Donation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/Donation;

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->donation:Lcab/snapp/passenger/data/models/Donation;

    .line 47
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->paymentTypes:Ljava/util/List;

    .line 48
    const-class v0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->apReceipt:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;
    .locals 1

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->apReceipt:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    return-object v0
.end method

.method public getCanPayInCash()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->canPayInCash:Z

    return v0
.end method

.method public getCurrentCredit()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->currentCredit:D

    return-wide v0
.end method

.method public getDonation()Lcab/snapp/passenger/data/models/Donation;
    .locals 1

    .line 121
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->donation:Lcab/snapp/passenger/data/models/Donation;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->paymentTypes:Ljava/util/List;

    return-object v0
.end method

.method public getRidePrice()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->ridePrice:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 106
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->status:I

    return v0
.end method

.method public isApWalletRegistered()Z
    .locals 2

    .line 159
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->isApWalletRegistered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApReceipt(Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->apReceipt:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    return-void
.end method

.method public setApWalletRegistered(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->isApWalletRegistered:I

    return-void
.end method

.method public setCurrentCredit(D)V
    .locals 0

    .line 169
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->currentCredit:D

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setPaymentTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->paymentTypes:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RideReceiptResponse{currentCredit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->currentCredit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ridePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->ridePrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canPayInCash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->canPayInCash:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", donation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->donation:Lcab/snapp/passenger/data/models/Donation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 54
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->currentCredit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 55
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->ridePrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->canPayInCash:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->donation:Lcab/snapp/passenger/data/models/Donation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->paymentTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->apReceipt:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
