.class public Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

.field public final farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

.field public final latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field public final nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

.field public final nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion$1;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion$1;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 48
    const-class v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 49
    const-class v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 50
    const-class v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 51
    const-class v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapbox/mapboxsdk/geometry/VisibleRegion$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 65
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 66
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 67
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 68
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 82
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 89
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    .line 90
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 91
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 92
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 93
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 94
    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 117
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 118
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    const v2, 0xf4240

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 119
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    const v2, 0x3b9aca00

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[farLeft ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], farRight ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], nearLeft ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], nearRight ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], latLngBounds ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->farRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearLeft:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->nearRight:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->latLngBounds:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
