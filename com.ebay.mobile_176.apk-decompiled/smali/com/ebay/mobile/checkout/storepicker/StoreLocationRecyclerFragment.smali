.class public Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;
.super Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;
.source "StoreLocationRecyclerFragment.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;
.implements Lcom/ebay/mobile/checkout/storepicker/StoreSelectionFragmentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;",
        "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener<",
        "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
        ">;",
        "Lcom/ebay/mobile/checkout/storepicker/StoreSelectionFragmentListener;"
    }
.end annotation


# static fields
.field public static final ARG_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final ARG_PICKUP_PROGRAMS_KEY:Ljava/lang/String; = "pickup_programs_key"

.field public static final ARG_PICKUP_PROGRAMS_VALUE:Ljava/lang/String; = "pickup_programs_value"

.field public static final ARG_SELECTED_LOCATION_ID:Ljava/lang/String; = "selected_location_id"

.field public static final LOAD_STATE:Ljava/lang/String; = "load_state"


# instance fields
.field protected adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;"
        }
    .end annotation
.end field

.field private countryHasReversedPostalCode:Z

.field private lastSelectedStorePosition:I

.field loadState:I

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

.field private selectedLocationId:Ljava/lang/String;

.field private selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

.field private selectedStorePosition:I

.field private storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

.field private storeLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    .line 49
    iput v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    return-void
.end method

.method private loadData(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    .line 241
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->clear()V

    .line 242
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 246
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    const/4 v1, 0x0

    const-string v2, ""

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v4, v5

    .line 247
    invoke-virtual/range {v0 .. v7}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->newSection(ILjava/lang/String;Ljava/util/List;IIII)Lcom/ebay/nautilus/shell/widget/CompositeArrayAdapter$Section;

    move-result-object p2

    .line 246
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->add(Lcom/ebay/nautilus/shell/widget/CompositeArrayAdapter$Section;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getEmptyViewResource()I
    .locals 1

    const v0, 0x7f0d050f

    return v0
.end method

.method protected getErrorViewResource()I
    .locals 1

    const v0, 0x7f0d0176

    return v0
.end method

.method protected initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 138
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 139
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    new-instance v0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;

    .line 141
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 143
    new-instance p1, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget-object v6, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->STORE_LOCATION:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    iget-object v8, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v9, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->pickupProgramsById:Ljava/util/Map;

    iget-boolean v10, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->countryHasReversedPostalCode:Z

    const v5, 0x7f0d0510

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;-><init>(Landroid/content/Context;ILcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;[Ljava/lang/Object;Ljava/util/Map;Z)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    .line 146
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    const v0, 0x7f0d037c

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->setLoadingViewResource(I)V

    .line 147
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData(Ljava/util/ArrayList;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;ZZ)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->clear()V

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setLoadState(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x4

    .line 204
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setLoadState(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    .line 208
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedLocationId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 212
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->locationUUID:Ljava/lang/String;

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedLocationId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v1, 0x0

    aput-object p3, p2, v1

    .line 216
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    .line 217
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iget p3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 218
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz p2, :cond_3

    .line 219
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iget-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    aget-object p3, p3, v1

    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    invoke-interface {p2, p3, v1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->onStoreSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    .line 226
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x2

    .line 227
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setLoadState(I)V

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setLoadState(I)V

    .line 232
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->loadData(Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selected_location_id"

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedLocationId:Ljava/lang/String;

    const-string v1, "pickup_programs_key"

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "pickup_programs_value"

    .line 58
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->pickupProgramsById:Ljava/util/Map;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->pickupProgramsById:Ljava/util/Map;

    .line 65
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "country_code"

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->countryHasReversedPostalCode:Z

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 121
    iget p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    if-le p1, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 125
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->onItemSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    if-eq v0, p2, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    aput-object p1, v0, v1

    .line 169
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->notifyItemChanged(I)V

    .line 170
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->adapter:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;->notifyItemChanged(I)V

    .line 171
    iput p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    .line 172
    iput p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    aget-object v0, v0, v1

    invoke-interface {p1, v0, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->onStoreSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->onItemSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selected_store"

    .line 110
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "last_selected_store_position"

    .line 111
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "storeLocations"

    .line 112
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "load_state"

    .line 113
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->loadState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "selected_marker_position"

    .line 114
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStoreSelected(I)V
    .locals 3

    .line 254
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    .line 255
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 260
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 261
    iput v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    .line 262
    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedLocationId:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement both StoreLocationListener and CheckoutProgressStatus"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 93
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStore:[Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v0, 0x0

    const-string/jumbo v1, "selected_store"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    aput-object v1, p1, v0

    const-string p1, "last_selected_store_position"

    const/4 v0, -0x1

    .line 95
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->lastSelectedStorePosition:I

    const-string/jumbo p1, "storeLocations"

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    const-string/jumbo p1, "selected_marker_position"

    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->selectedStorePosition:I

    const-string p1, "load_state"

    .line 100
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setLoadState(I)V

    .line 102
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->loadData(Landroid/app/Activity;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method protected setLoadState(I)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->setLoadState(I)V

    .line 185
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->getSwipeToRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 186
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->loadState:I

    :cond_0
    return-void
.end method
