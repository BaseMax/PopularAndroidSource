.class public Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEEP_LINK_AFTER_CHARGE:Ljava/lang/String; = "snapp://open/charge"


# instance fields
.field private amount:J

.field private mobileNumber:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private returnUrl:Ljava/lang/String;

.field private type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field private userMobileNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data/models/charge/SIMChargeType;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 22
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->amount:J

    .line 23
    iput-object p3, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->mobileNumber:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->operator:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->returnUrl:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 27
    iput-object p7, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->userMobileNumber:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->amount:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->mobileNumber:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->operator:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->returnUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->values()[Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->userMobileNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->amount:J

    return-wide v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->amount:J

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->operator:Ljava/lang/String;

    return-void
.end method

.method public setReturnUrl(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->returnUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 71
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->amount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->operator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->returnUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->userMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
