.class public Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;
.source "BannerViewModel.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;I)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;IZ)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;IZ)V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getBackgroundColor(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;->getBaseColorPalette(Landroid/content/Context;)Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    const-string v0, "Y2"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;->getColorFromName(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getButtonAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSecondaryCallToAction()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSecondaryCallToAction()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubTitleAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSubTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSubTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextColor(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;->getBaseColorPalette(Landroid/content/Context;)Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->colorPalette:Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;

    const-string v0, "Y7"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/colorpalette/BaseColorPalette;->getColorFromName(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTitleAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 40
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/BannerViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 41
    invoke-interface {p2, p1, p0}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    :cond_0
    return-void
.end method
