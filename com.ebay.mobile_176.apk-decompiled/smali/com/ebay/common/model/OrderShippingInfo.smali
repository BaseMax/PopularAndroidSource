.class public Lcom/ebay/common/model/OrderShippingInfo;
.super Ljava/lang/Object;
.source "OrderShippingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/OrderShippingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actualDeliveryDate:Ljava/util/Date;

.field public estimatedMaxDeliveryDate:Ljava/util/Date;

.field public estimatedMinDeliveryDate:Ljava/util/Date;

.field public shippedDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/ebay/common/model/OrderShippingInfo$1;

    invoke-direct {v0}, Lcom/ebay/common/model/OrderShippingInfo$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/OrderShippingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    .line 11
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    .line 12
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    .line 13
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    .line 11
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    .line 12
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    .line 13
    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 73
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/model/OrderShippingInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/ebay/common/model/OrderShippingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 28
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_1

    .line 31
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMinDeliveryDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_3

    .line 36
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    :cond_3
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    if-eqz p2, :cond_5

    .line 41
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->shippedDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    :cond_5
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_7

    .line 46
    iget-object p2, p0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_7
    return-void
.end method
