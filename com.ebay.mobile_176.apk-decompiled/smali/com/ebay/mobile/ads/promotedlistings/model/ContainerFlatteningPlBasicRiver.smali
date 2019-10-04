.class public Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;
.super Ljava/lang/Object;
.source "ContainerFlatteningPlBasicRiver.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;


# instance fields
.field private actualModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final footerComponent:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

.field private final mainComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    const-string v0, "mainComponents can not be null"

    .line 27
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->mainComponents:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->footerComponent:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-void
.end method


# virtual methods
.method public getFooterComponent()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->footerComponent:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object v0
.end method

.method public getMainComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->mainComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 44
    instance-of v2, v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    if-eqz v2, :cond_2

    .line 46
    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 47
    iget-object v3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/ContainerFlatteningPlBasicRiver;->actualModels:Ljava/util/List;

    return-object v0
.end method
