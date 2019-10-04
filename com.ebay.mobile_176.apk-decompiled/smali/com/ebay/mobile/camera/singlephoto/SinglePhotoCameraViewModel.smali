.class public Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraViewModel;
.super Ljava/lang/Object;
.source "SinglePhotoCameraViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# instance fields
.field public final rotation:Landroidx/databinding/ObservableInt;


# direct methods
.method public constructor <init>(Landroidx/databinding/ObservableInt;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ebay/mobile/camera/singlephoto/SinglePhotoCameraViewModel;->rotation:Landroidx/databinding/ObservableInt;

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

    const/4 v0, 0x0

    return v0
.end method
