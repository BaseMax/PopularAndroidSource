.class public Lcom/ebay/common/model/EbayOrder;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "EbayOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/EbayOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public creationDate:Ljava/util/Date;

.field public eBayPaymentStatus:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public lastModifiedTime:Ljava/util/Date;

.field public merchantPickupCode:Ljava/lang/String;

.field public paidTime:Ljava/util/Date;

.field public paymentHoldStatus:Ljava/lang/String;

.field public paymentMethod:Ljava/lang/String;

.field public paymentMethods:Ljava/lang/String;

.field public pickupMethod:Ljava/lang/String;

.field public pickupPriority:Ljava/lang/String;

.field public pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

.field public refunds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/Refund;",
            ">;"
        }
    .end annotation
.end field

.field public selectedMethod:Ljava/lang/String;

.field public sellerEmail:Ljava/lang/String;

.field public shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public shippingService:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public statusXO:Ljava/lang/String;

.field public storeId:Ljava/lang/String;

.field public subtotal:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public total:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/OrderItemTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Lcom/ebay/common/model/EbayOrder$1;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayOrder$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/EbayOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->id:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->status:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 50
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 51
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 52
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->creationDate:Ljava/util/Date;

    .line 53
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethods:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->sellerEmail:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->subtotal:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 56
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->total:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 57
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupPriority:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupMethod:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->selectedMethod:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->storeId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    .line 63
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->merchantPickupCode:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentHoldStatus:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingService:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 67
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->eBayPaymentStatus:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->lastModifiedTime:Ljava/util/Date;

    .line 69
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethod:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->statusXO:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paidTime:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 76
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->id:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->status:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 83
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 85
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 88
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    move-object v6, v0

    :goto_0
    iput-object v6, p0, Lcom/ebay/common/model/EbayOrder;->creationDate:Ljava/util/Date;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethods:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->sellerEmail:Ljava/lang/String;

    .line 93
    sget-object v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->subtotal:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 94
    sget-object v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->total:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 103
    iget-object v7, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    sget-object v8, Lcom/ebay/common/model/OrderItemTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->pickupMethod:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->pickupPriority:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->selectedMethod:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->storeId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    .line 114
    invoke-static {}, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->values()[Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    move-result-object v6

    aget-object v2, v6, v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->merchantPickupCode:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->paymentHoldStatus:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/model/EbayOrder;->shippingService:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 122
    sget-object v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v1, p0, Lcom/ebay/common/model/EbayOrder;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 125
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/EbayOrder;->eBayPaymentStatus:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_7

    .line 127
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_7
    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->lastModifiedTime:Ljava/util/Date;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethod:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/EbayOrder;->statusXO:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_8

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    :goto_2
    if-ge v3, v0, :cond_8

    .line 138
    iget-object v1, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    sget-object v2, Lcom/ebay/common/model/Refund;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    :cond_8
    invoke-static {p1}, Lcom/ebay/common/model/EbayOrder;->readOptDate(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/EbayOrder;->paidTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->creationDate:Ljava/util/Date;

    const-wide/16 v3, -0x1

    if-nez v0, :cond_6

    move-wide v5, v3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->creationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :goto_3
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethods:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->sellerEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->subtotal:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->total:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 178
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/ItemTransaction;

    .line 179
    invoke-virtual {v5, p1, p2}, Lcom/ebay/common/model/ItemTransaction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupPriority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->selectedMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->storeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->pickupStatus:Lcom/ebay/nautilus/domain/data/OrderPickupStatus;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/OrderPickupStatus;->ordinal()I

    move-result v0

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->merchantPickupCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentHoldStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    :cond_b
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->eBayPaymentStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->lastModifiedTime:Ljava/util/Date;

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->lastModifiedTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    :goto_8
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->paymentMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->statusXO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 207
    iget-object v0, p0, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/Refund;

    .line 208
    invoke-virtual {v1, p1, p2}, Lcom/ebay/common/model/Refund;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 211
    :cond_e
    iget-object p2, p0, Lcom/ebay/common/model/EbayOrder;->paidTime:Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/ebay/common/model/EbayOrder;->writeOptDate(Landroid/os/Parcel;Ljava/util/Date;)V

    return-void
.end method
