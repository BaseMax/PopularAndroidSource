.class final Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;
.super Ljava/lang/Object;
.source "LookupAvailabilityResponse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LookupAvailabilityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ebay/common/model/inventory/StoreAvailability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final availabilityTypeToValue(Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;)I
    .locals 1

    .line 303
    sget-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$1;->$SwitchMap$com$ebay$common$model$inventory$StoreAvailability$AvailabilityType:[I

    invoke-virtual {p1}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compare(Lcom/ebay/common/model/inventory/StoreAvailability;Lcom/ebay/common/model/inventory/StoreAvailability;)I
    .locals 4

    .line 285
    iget-object v0, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    iget-object v1, p2, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-virtual {v0, v1}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-wide v0, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    iget-wide p1, p2, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    sub-double/2addr v0, p1

    .line 288
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v2

    if-gez p1, :cond_0

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p1

    :cond_0
    double-to-int p1, v0

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;->availabilityTypeToValue(Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;)I

    move-result p1

    iget-object p2, p2, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-virtual {p0, p2}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;->availabilityTypeToValue(Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 278
    check-cast p1, Lcom/ebay/common/model/inventory/StoreAvailability;

    check-cast p2, Lcom/ebay/common/model/inventory/StoreAvailability;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;->compare(Lcom/ebay/common/model/inventory/StoreAvailability;Lcom/ebay/common/model/inventory/StoreAvailability;)I

    move-result p1

    return p1
.end method
