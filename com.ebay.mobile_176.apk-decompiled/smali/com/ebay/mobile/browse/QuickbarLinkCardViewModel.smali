.class public Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;
.source "QuickbarLinkCardViewModel.java"


# instance fields
.field private final model:Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d0397

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;ILjava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;

    return-void
.end method


# virtual methods
.method public isLastSelected()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;->getLastSelected()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;->getSelected()Z

    move-result v0

    return v0
.end method
