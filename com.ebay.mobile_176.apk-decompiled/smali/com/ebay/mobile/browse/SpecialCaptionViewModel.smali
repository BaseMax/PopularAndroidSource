.class public Lcom/ebay/mobile/browse/SpecialCaptionViewModel;
.super Ljava/lang/Object;
.source "SpecialCaptionViewModel.java"


# instance fields
.field public final accessibilityText:Ljava/lang/String;

.field public final text:Ljava/lang/CharSequence;

.field public final type:Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;->text:Ljava/lang/CharSequence;

    .line 22
    iput-object p2, p0, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;->accessibilityText:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;->type:Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;

    return-void
.end method

.method public static setupSpecialCaption(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardThemeData;)Lcom/ebay/mobile/browse/SpecialCaptionViewModel;
    .locals 3
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;->getSpecialPriceType()Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;->getSpecialPriceType()Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getDisplayPriceMessage()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getDisplayPriceMessage()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getDisplayPriceMessage()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p0

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;

    invoke-direct {v0, p1, p0, v1}, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/search/SpecialPriceTypeEnum;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method
