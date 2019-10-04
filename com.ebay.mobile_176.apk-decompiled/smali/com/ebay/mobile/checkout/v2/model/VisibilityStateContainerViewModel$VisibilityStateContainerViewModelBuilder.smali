.class public Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;
.source "VisibilityStateContainerViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityStateContainerViewModelBuilder"
.end annotation


# instance fields
.field private accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private containerStyleRes:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private initialVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;
    .locals 18
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 170
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    .line 173
    :cond_0
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    iget v9, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->initialVisibility:I

    iget-object v10, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    iget-object v11, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->containerId:Ljava/lang/String;

    iget-object v12, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->data:Ljava/util/List;

    iget-object v13, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->headerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    iget-object v14, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->identifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    iget-object v15, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;

    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    iget v3, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->containerStyleRes:I

    move-object v8, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v8 .. v17}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;-><init>(ILandroidx/core/view/AccessibilityDelegateCompat;Ljava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    return-object v1
.end method

.method public bridge synthetic build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->build()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    move-result-object v0

    return-object v0
.end method

.method public setAccessibilityDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 0
    .param p1    # Landroidx/core/view/AccessibilityDelegateCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object p0
.end method

.method public setContainerStyleRes(I)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->containerStyleRes:I

    return-object p0
.end method

.method public setInitialVisibility(I)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 148
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->initialVisibility:I

    return-object p0
.end method
