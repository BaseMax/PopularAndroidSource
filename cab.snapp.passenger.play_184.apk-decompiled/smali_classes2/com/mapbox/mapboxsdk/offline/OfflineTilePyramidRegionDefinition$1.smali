.class final Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;
    .locals 1

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    invoke-direct {v0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;
    .locals 0

    .line 159
    new-array p1, p1, [Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition$1;->newArray(I)[Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    move-result-object p1

    return-object p1
.end method
