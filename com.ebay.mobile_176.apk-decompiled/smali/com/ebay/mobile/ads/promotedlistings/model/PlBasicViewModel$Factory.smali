.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;
.super Ljava/lang/Object;
.source "PlBasicViewModel.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected final context:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field protected final keyParams:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;

.field protected final riverName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 258
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v0, :cond_0

    .line 260
    check-cast p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 261
    new-instance p1, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;-><init>(J)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->keyParams:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;

    .line 263
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->riverName:Ljava/lang/String;

    return-void

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activity must implement FwActivity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create PlBasicViewModel for detached fragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->keyParams:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    .line 272
    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    new-instance v2, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;

    invoke-direct {v2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;-><init>()V

    iget-object v3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;->riverName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;-><init>(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;Ljava/lang/String;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$1;)V

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
