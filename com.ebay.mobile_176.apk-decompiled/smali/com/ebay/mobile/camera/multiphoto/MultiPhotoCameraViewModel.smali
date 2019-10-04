.class public Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;
.super Ljava/lang/Object;
.source "MultiPhotoCameraViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# instance fields
.field private final alertTextColorRes:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final defaultTextColorRes:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

.field public final rotation:Landroidx/databinding/ObservableInt;

.field public final selectionCount:Landroidx/databinding/ObservableInt;

.field public final selectionCountTextColor:Landroidx/databinding/ObservableInt;

.field private selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/shell/app/RecyclerItemSelector<",
            "Lcom/ebay/nautilus/domain/data/image/GalleryImageData;",
            "Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final selectionLimit:I

.field public final uploadEnabled:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(Landroidx/databinding/ObservableInt;III)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->uploadEnabled:Landroidx/databinding/ObservableBoolean;

    .line 23
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionCount:Landroidx/databinding/ObservableInt;

    .line 25
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionCountTextColor:Landroidx/databinding/ObservableInt;

    .line 39
    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->rotation:Landroidx/databinding/ObservableInt;

    .line 40
    iput p2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionLimit:I

    .line 41
    iput p3, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->defaultTextColorRes:I

    .line 42
    iput p4, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->alertTextColorRes:I

    .line 43
    new-instance p1, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const p3, 0x7f0d00a3

    invoke-direct {p1, p3, p2}, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;-><init>(ILjava/util/List;)V

    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    .line 44
    new-instance p1, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    new-instance p2, Lcom/ebay/nautilus/shell/app/ParcelableMultiSelectionStateHandler;

    invoke-direct {p2}, Lcom/ebay/nautilus/shell/app/ParcelableMultiSelectionStateHandler;-><init>()V

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;-><init>(Lcom/ebay/nautilus/shell/app/MultiSelectionStateHandler;)V

    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    .line 45
    iget-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->setSelectionState(I)V

    return-void
.end method

.method private updateSelections()V
    .locals 11

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    invoke-virtual {v2}, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_4

    .line 135
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 136
    instance-of v8, v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    if-eqz v8, :cond_3

    .line 138
    check-cast v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    .line 139
    iget-object v8, v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_2

    .line 141
    iget v10, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionLimit:I

    if-ge v1, v10, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 142
    :cond_2
    :goto_2
    iget-object v10, v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->isSelected:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v10, v9}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 143
    iget-object v9, v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->isSelectable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v9, v6}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 144
    iget-object v6, v7, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->selectedIndex:Landroidx/databinding/ObservableInt;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionCount:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 148
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionCountTextColor:Landroidx/databinding/ObservableInt;

    iget v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionLimit:I

    if-ge v1, v2, :cond_5

    iget v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->defaultTextColorRes:I

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->alertTextColorRes:I

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 149
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->uploadEnabled:Landroidx/databinding/ObservableBoolean;

    if-lez v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public addNewPhoto(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;->add(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->toggleSelection(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V

    return-void
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedUris()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    invoke-virtual {v2}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->getSelectedCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 83
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v0, "photos"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "photos"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 114
    iget-object v2, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    new-instance v3, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    iget-object v4, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->rotation:Landroidx/databinding/ObservableInt;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;-><init>(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;Landroidx/databinding/ObservableInt;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;->add(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->restoreState(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->updateSelections()V

    :cond_1
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->photoCarouselViewModel:Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;

    invoke-virtual {v1}, Lcom/ebay/mobile/camera/multiphoto/PhotoCarouselViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 95
    check-cast v2, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;

    iget-object v2, v2, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "photos"

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->saveState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public toggleSelection(Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionCount:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    iget v1, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionLimit:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    iget-object v1, p1, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 67
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->isItemSelected(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->selectionHelper:Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;

    iget-object p1, p1, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/ebay/nautilus/shell/app/RecyclerItemSelector;->toggleSelection(Ljava/lang/Object;I)V

    .line 70
    invoke-direct {p0}, Lcom/ebay/mobile/camera/multiphoto/MultiPhotoCameraViewModel;->updateSelections()V

    :cond_1
    return-void
.end method
