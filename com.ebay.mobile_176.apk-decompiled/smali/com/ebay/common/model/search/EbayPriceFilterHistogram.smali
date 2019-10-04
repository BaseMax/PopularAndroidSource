.class public Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
.super Ljava/lang/Object;
.source "EbayPriceFilterHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PRICE_BUCKET_INDEX:I = 0x0

.field public static final PRICE_RANGE_INVALID:I = -0x1

.field public static final PRICE_RANGE_TYPE_HIGHEST:I = 0x2

.field public static final PRICE_RANGE_TYPE_LOWEST:I = 0x0

.field public static final PRICE_RANGE_TYPE_MIDDLE:I = 0x1

.field public static final UNSELECTED_PRICE_BUCKET_INDEX:I = -0x1


# instance fields
.field public final priceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 43
    sget-object v3, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    return-void
.end method

.method public static getListIndexOfPriceRange(Lcom/ebay/common/model/search/EbayPriceFilterHistogram;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->getIndexOfPriceRange(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)I

    move-result p0

    if-le p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->isEmpty(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->isEmpty(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 104
    instance-of v0, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIndexOfPriceRange(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    .line 89
    iget-object v3, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v3, p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v3, p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_0

    iget-object v3, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 92
    :goto_2
    iget-object v5, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v5, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v5, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p2, :cond_2

    iget-object v5, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v2, v2, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;->priceRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    .line 126
    invoke-virtual {v1, p1, p2}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
