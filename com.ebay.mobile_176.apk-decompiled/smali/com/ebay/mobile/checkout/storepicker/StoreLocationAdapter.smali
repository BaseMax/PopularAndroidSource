.class public Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;
.source "StoreLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;,
        Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final clickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final countryHasReversedPostalCode:Z

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemViewResourceId:I

.field private final itemViewType:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

.field private pickupProgramsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedItem:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;[Ljava/lang/Object;Ljava/util/Map;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;",
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener<",
            "TT;>;[TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;",
            ">;Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    iput p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->itemViewResourceId:I

    .line 43
    iput-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->itemViewType:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    .line 44
    iput-object p5, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->selectedItem:[Ljava/lang/Object;

    .line 45
    iput-object p4, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->clickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;

    .line 46
    iput-object p6, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->pickupProgramsById:Ljava/util/Map;

    .line 47
    iput-boolean p7, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->countryHasReversedPostalCode:Z

    return-void
.end method


# virtual methods
.method public onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->itemViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 54
    sget-object p1, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$1;->$SwitchMap$com$ebay$mobile$checkout$storepicker$StoreLocationAdapter$ItemViewType:[I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->itemViewType:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->selectedItem:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->clickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;

    iget-object v7, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->pickupProgramsById:Ljava/util/Map;

    iget-boolean v8, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->countryHasReversedPostalCode:Z

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;-><init>(Landroid/view/View;[Ljava/lang/Object;Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;Ljava/util/Map;Z)V

    return-object p1
.end method
