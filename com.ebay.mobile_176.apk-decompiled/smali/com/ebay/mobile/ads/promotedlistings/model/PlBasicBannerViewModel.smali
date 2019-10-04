.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;
.super Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.source "PlBasicBannerViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel<",
        "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;",
        ">;",
        "Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;"
    }
.end annotation


# instance fields
.field private subTitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;->getSubTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLandingTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler$-CC;->$default$getLandingTitle(Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->subTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->title:Ljava/lang/CharSequence;

    .line 35
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;->getSubTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;->subTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method
