.class public Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;


# instance fields
.field private map:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private final mapReadyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mapViewReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;

.field private mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    return-void
.end method

.method public static newInstance()Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;
    .locals 1

    .line 45
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;
    .locals 1

    .line 56
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;-><init>()V

    .line 57
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/MapFragmentUtils;->createFragmentArgs(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMapAsync(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 216
    :cond_0
    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 69
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapViewReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 98
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/utils/MapFragmentUtils;->resolveArgs(Landroid/content/Context;Landroid/os/Bundle;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapView;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 100
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 195
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 84
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/MapFragmentUtils;->createFragmentArgs(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 184
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 124
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;

    .line 125
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getMapAsync(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V

    .line 116
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->mapViewReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;

    if-eqz p1, :cond_0

    .line 117
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/SupportMapFragment;->map:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-interface {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapFragment$OnMapViewReadyCallback;->onMapViewReady(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    :cond_0
    return-void
.end method
