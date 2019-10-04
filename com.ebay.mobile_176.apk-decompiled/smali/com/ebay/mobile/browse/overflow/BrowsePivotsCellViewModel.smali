.class public Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/BaseComponentViewModel;
.source "BrowsePivotsCellViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private contentEntries:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final heading:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/field/Group;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d0093

    .line 32
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/BaseComponentViewModel;-><init>(I)V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getHeading()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getHeading()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->heading:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 35
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContentEntries()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->contentEntries:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    iget-object v1, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 44
    instance-of v3, v2, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    if-eqz v3, :cond_0

    .line 46
    new-instance v3, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-direct {v3, v2}, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;)V

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->heading:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v1, Lcom/ebay/mobile/browse/overflow/BrowsePivotsEntriesViewModel;

    invoke-direct {v1, p1, v0}, Lcom/ebay/mobile/browse/overflow/BrowsePivotsEntriesViewModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ebay/mobile/browse/overflow/BrowsePivotsCellViewModel;->contentEntries:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

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
