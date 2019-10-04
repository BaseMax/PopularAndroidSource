.class public final Lcom/mapbox/android/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/a/b/i;->a:Ljava/util/List;

    return-void
.end method

.method public static create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;
    .locals 1

    const-string v0, "location can\'t be null"

    .line 40
    invoke-static {p0, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/mapbox/android/a/b/i;

    invoke-direct {p0, v0}, Lcom/mapbox/android/a/b/i;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static create(Ljava/util/List;)Lcom/mapbox/android/a/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/mapbox/android/a/b/i;"
        }
    .end annotation

    const-string v0, "locations can\'t be null"

    .line 54
    invoke-static {p0, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/mapbox/android/a/b/i;

    invoke-direct {v0, p0}, Lcom/mapbox/android/a/b/i;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static extractResult(Landroid/content/Intent;)Lcom/mapbox/android/a/b/i;
    .locals 3

    const-string v0, "com.google.android.gms.location.LocationResult"

    .line 89
    invoke-static {v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1096
    invoke-static {p0}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/android/a/b/i;->create(Ljava/util/List;)Lcom/mapbox/android/a/b/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "location"

    if-eqz p0, :cond_1

    .line 1107
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-object v1

    .line 1102
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 1103
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    .line 1102
    invoke-static {p0}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mapbox/android/a/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/a/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/mapbox/android/a/b/i;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
