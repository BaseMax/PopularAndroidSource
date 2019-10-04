.class public Lcom/ebay/mobile/browse/BrowseItemCardViewModel;
.super Lcom/ebay/mobile/search/answers/SearchItemCardViewModel;
.source "BrowseItemCardViewModel.java"


# instance fields
.field private extension:Lcom/ebay/mobile/browse/BrowseExtension;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;IIIIII)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct/range {p0 .. p9}, Lcom/ebay/mobile/search/answers/SearchItemCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;IIIIII)V

    return-void
.end method


# virtual methods
.method public getExtension()Lcom/ebay/mobile/browse/BrowseExtension;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1}, Lcom/ebay/mobile/search/answers/SearchItemCardViewModel;->onBind(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    invoke-static {p1, v0}, Lcom/ebay/mobile/browse/BrowseExtension;->mapSearchExtension(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;)Lcom/ebay/mobile/browse/BrowseExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    return-void
.end method
