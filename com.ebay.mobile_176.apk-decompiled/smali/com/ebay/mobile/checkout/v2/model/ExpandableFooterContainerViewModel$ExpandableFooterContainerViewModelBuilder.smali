.class public Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;
.source "ExpandableFooterContainerViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableFooterContainerViewModelBuilder"
.end annotation


# instance fields
.field private containerStyleRes:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 163
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    .line 166
    :cond_0
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;

    iget v9, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->viewType:I

    iget-object v10, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->containerId:Ljava/lang/String;

    iget-object v11, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->data:Ljava/util/List;

    iget-object v12, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    iget-object v13, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->identifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    iget-object v14, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-object v15, v2

    check-cast v15, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    iget v2, v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->containerStyleRes:I

    move-object v8, v1

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;I)V

    return-object v1
.end method

.method public setContainerStyleRes(I)Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->containerStyleRes:I

    return-object p0
.end method
