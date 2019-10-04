.class public Lcom/ebay/mobile/browse/SellerHeaderViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/BaseSimpleItemViewModel;
.source "SellerHeaderViewModel.java"


# instance fields
.field private logoAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private titleContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/BaseSimpleItemViewModel;-><init>(ILjava/lang/CharSequence;Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 24
    iput-object p3, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->titleContentDescription:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->logoAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-void
.end method

.method public static synthetic lambda$getHeaderExecution$0(Lcom/ebay/mobile/browse/SellerHeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->logoAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-static {p1, v0}, Lcom/ebay/mobile/uxcomponents/actions/NavigationActionHandler;->navigateTo(Lcom/ebay/nautilus/shell/uxcomponents/BasicComponentEvent;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z

    return-void
.end method


# virtual methods
.method public getForegroundAttr()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->logoAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-static {v0}, Lcom/ebay/mobile/uxcomponents/actions/NavigationActionHandler;->isActionSupported(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0403b4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderExecution()Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
            "Lcom/ebay/mobile/browse/SellerHeaderViewModel;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/ebay/mobile/browse/-$$Lambda$SellerHeaderViewModel$9gmesqlNuwgt8mgTlYRmwPYR4qI;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/browse/-$$Lambda$SellerHeaderViewModel$9gmesqlNuwgt8mgTlYRmwPYR4qI;-><init>(Lcom/ebay/mobile/browse/SellerHeaderViewModel;)V

    return-object v0
.end method

.method public getTitleContentDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->titleContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;->titleContentDescription:Ljava/lang/String;

    return-object v0
.end method
