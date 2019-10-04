.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/SimpleLabelViewModel;
.source "PlBasicSimpleLabelViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;


# instance fields
.field public action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private showDivider:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/uxcomponents/viewmodel/SimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 40
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/ebay/nautilus/domain/data/experience/type/base/Action;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;",
            ">;I",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/Action;",
            "Z)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/uxcomponents/viewmodel/SimpleLabelViewModel;-><init>(Ljava/util/List;I)V

    .line 31
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 32
    iput-boolean p4, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;->showDivider:Z

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

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

.method public onBindWithView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-boolean v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;->showDivider:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0bf1

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
