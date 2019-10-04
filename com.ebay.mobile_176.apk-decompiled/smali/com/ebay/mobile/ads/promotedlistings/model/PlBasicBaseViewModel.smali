.class public abstract Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.super Ljava/lang/Object;
.source "PlBasicBaseViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ebay/nautilus/domain/data/experience/type/base/Module;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;",
        "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;"
    }
.end annotation


# instance fields
.field public final metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

.field protected final module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final viewType:I


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;",
            "I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    .line 22
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    .line 23
    iput p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;->viewType:I

    return-void
.end method


# virtual methods
.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;->viewType:I

    return v0
.end method

.method public synthetic onBind(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;)V

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
