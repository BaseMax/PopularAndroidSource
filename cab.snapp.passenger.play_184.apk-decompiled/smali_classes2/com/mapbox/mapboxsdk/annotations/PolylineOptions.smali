.class public final Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$1;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$1;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const-class v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->alpha(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->color(I)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->width(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->addPoint(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-object p0
.end method

.method public final varargs add([Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 3

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 100
    invoke-virtual {p0, v2}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->add(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 115
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->add(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final alpha(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setAlpha(F)V

    return-object p0
.end method

.method public final color(I)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setColor(I)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 221
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getAlpha()F

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getAlpha()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getColor()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final getAlpha()F
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final getColor()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getColor()I

    move-result v0

    return v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPolyline()Lcom/mapbox/mapboxsdk/annotations/Polyline;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getWidth()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 245
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getColor()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getWidth()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final width(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->polyline:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setWidth(F)V

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
