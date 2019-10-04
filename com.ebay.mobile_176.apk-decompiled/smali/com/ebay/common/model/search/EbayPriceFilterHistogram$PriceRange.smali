.class public final Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;
.super Ljava/lang/Object;
.source "EbayPriceFilterHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceRange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public final convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public final maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public final minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field private priceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 158
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 159
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 160
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 183
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 184
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 185
    sget-object v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    .line 187
    iget p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->getPriceType()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;I)V

    .line 167
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->getPriceType()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;I)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    :goto_1
    iput-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 175
    :cond_2
    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    :goto_2
    iput-object p3, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p4, :cond_3

    goto :goto_3

    .line 176
    :cond_3
    new-instance p4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p4}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    :goto_3
    iput-object p4, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 177
    iput p5, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 347
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    if-eqz v1, :cond_2

    .line 349
    check-cast p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    .line 350
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 351
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public getDisplayString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->getPriceType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 286
    :pswitch_0
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v1, 0x7f1208cf

    if-nez p2, :cond_0

    .line 288
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 289
    invoke-static {p2, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p2

    .line 291
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 293
    :cond_0
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 295
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 296
    invoke-static {p2, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p2

    .line 297
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_1
    if-eqz p2, :cond_1

    const p2, 0x7f120a0e

    goto :goto_0

    :cond_1
    const p2, 0x7f120a0d

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 268
    invoke-static {v1, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v5, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 271
    invoke-static {v5, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 279
    invoke-static {v1, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 280
    iget-object v5, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 281
    invoke-static {v5, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 246
    :pswitch_2
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v1, 0x7f120fcc

    if-nez p2, :cond_3

    .line 248
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 249
    invoke-static {p2, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p2

    .line 251
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 253
    :cond_3
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 255
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 256
    invoke-static {p2, v0, v4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p2

    .line 257
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriceType()I
    .locals 5

    .line 216
    iget v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    if-gt v0, v1, :cond_0

    .line 217
    iget v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    goto :goto_4

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 221
    :goto_1
    iget-object v4, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 360
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 361
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 318
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget p2, p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;->priceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
