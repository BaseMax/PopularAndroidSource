.class public Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREDIT_INSUFFICIENT:I = 0x0

.field public static final CREDIT_SUFFICIENT:I = 0x1

.field public static final ERROR:I = 0x2


# instance fields
.field private credit:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "credit"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private showRetryButton:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "show_retry_button"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private transferCredit:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "transfer_credit"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->credit:D

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->message:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->showRetryButton:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->status:I

    return-void
.end method


# virtual methods
.method public canTransferCredit()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->transferCredit:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCredit()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->credit:D

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 102
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->status:I

    return v0
.end method

.method public isShowRetryButton()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->showRetryButton:Z

    return v0
.end method

.method public setCredit(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->credit:D

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->message:Ljava/lang/String;

    return-void
.end method

.method public setShowRetryButton(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->showRetryButton:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->credit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->showRetryButton:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
