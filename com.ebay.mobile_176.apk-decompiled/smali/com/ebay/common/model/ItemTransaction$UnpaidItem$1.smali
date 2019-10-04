.class final Lcom/ebay/common/model/ItemTransaction$UnpaidItem$1;
.super Ljava/lang/Object;
.source "ItemTransaction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/ItemTransaction$UnpaidItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/model/ItemTransaction$UnpaidItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/ItemTransaction$UnpaidItem;
    .locals 2

    .line 556
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getParcelMapper()Lcom/ebay/nautilus/kernel/datamapping/ParcelMapper;

    move-result-object v0

    const-class v1, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    invoke-interface {v0, p1, v1}, Lcom/ebay/nautilus/kernel/datamapping/ParcelMapper;->readParcelJson(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/ItemTransaction$UnpaidItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/model/ItemTransaction$UnpaidItem;
    .locals 0

    .line 562
    new-array p1, p1, [Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/ItemTransaction$UnpaidItem$1;->newArray(I)[Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    move-result-object p1

    return-object p1
.end method
