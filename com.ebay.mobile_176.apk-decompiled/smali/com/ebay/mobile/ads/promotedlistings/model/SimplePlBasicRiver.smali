.class public Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;
.super Ljava/lang/Object;
.source "SimplePlBasicRiver.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;


# instance fields
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mainComponents can not be null"

    .line 24
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;->mainComponents:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;->footerComponent:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-void
.end method


# virtual methods
.method public getFooterComponent()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;->footerComponent:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object v0
.end method

.method public getMainComponents()Ljava/util/List;
    .locals 1
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

    .line 34
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;->mainComponents:Ljava/util/List;

    return-object v0
.end method
