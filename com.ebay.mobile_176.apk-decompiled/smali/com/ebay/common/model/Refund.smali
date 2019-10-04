.class public Lcom/ebay/common/model/Refund;
.super Ljava/lang/Object;
.source "Refund.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/Refund;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public refundTime:Ljava/util/Date;

.field public refundTo:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/ebay/common/model/Refund$1;

    invoke-direct {v0}, Lcom/ebay/common/model/Refund$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/Refund;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/Refund;->status:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/Refund;->type:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/Refund;->refundTo:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/Refund;->refundTime:Ljava/util/Date;

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 26
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object p1, p0, Lcom/ebay/common/model/Refund;->refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundTime:Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/ebay/common/model/Refund;->refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3
    return-void
.end method
