.class public Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;
.super Ljava/lang/Object;
.source "PhotoViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# instance fields
.field private final CAMERA_ITEM_LAYOUT:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public final contentDescription:Ljava/lang/String;

.field public final galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

.field public final isSelectable:Landroidx/databinding/ObservableBoolean;

.field public final isSelected:Landroidx/databinding/ObservableBoolean;

.field public final rotation:Landroidx/databinding/ObservableInt;

.field public final selectedIndex:Landroidx/databinding/ObservableInt;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroidx/databinding/ObservableInt;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    new-instance v0, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;-><init>(JLandroid/net/Uri;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;-><init>(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;Landroidx/databinding/ObservableInt;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;Landroidx/databinding/ObservableInt;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/image/GalleryImageData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->isSelected:Landroidx/databinding/ObservableBoolean;

    .line 18
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->isSelectable:Landroidx/databinding/ObservableBoolean;

    .line 19
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->selectedIndex:Landroidx/databinding/ObservableInt;

    const v0, 0x7f0d00a4

    .line 22
    iput v0, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->CAMERA_ITEM_LAYOUT:I

    .line 32
    iput-object p1, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->galleryImageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 33
    iput-object p3, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->contentDescription:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/ebay/mobile/camera/multiphoto/PhotoViewModel;->rotation:Landroidx/databinding/ObservableInt;

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

    const v0, 0x7f0d00a4

    return v0
.end method
