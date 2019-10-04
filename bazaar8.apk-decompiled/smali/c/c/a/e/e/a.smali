.class public final Lc/c/a/e/e/a;
.super Ljava/lang/Object;
.source "LocationManager.kt"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/e/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/entity/Location;
    .locals 1

    const-string v0, "network"

    .line 1
    invoke-virtual {p0, v0}, Lc/c/a/e/e/a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Lc/c/a/e/e/a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/Location;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc/c/a/e/e/a;->b()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/c/a/e/e/a;->b()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    const-string v1, "locationManager.getLastKnownLocation(provider)"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/e/f/g;->a(Landroid/location/Location;)Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v1, p1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final b()Landroid/location/LocationManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/e/a;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
