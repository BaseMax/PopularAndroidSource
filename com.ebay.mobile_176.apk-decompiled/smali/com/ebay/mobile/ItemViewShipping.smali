.class public Lcom/ebay/mobile/ItemViewShipping;
.super Ljava/lang/Object;
.source "ItemViewShipping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;,
        Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;
    }
.end annotation


# static fields
.field public static final siteSpecificShippingNamesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping;->siteSpecificShippingNamesMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShippingNamesSiteMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p0

    .line 31
    sget-object v0, Lcom/ebay/mobile/ItemViewShipping;->siteSpecificShippingNamesMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static isSitePopulated(Ljava/lang/String;)Z
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p0

    .line 25
    sget-object v0, Lcom/ebay/mobile/ItemViewShipping;->siteSpecificShippingNamesMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
