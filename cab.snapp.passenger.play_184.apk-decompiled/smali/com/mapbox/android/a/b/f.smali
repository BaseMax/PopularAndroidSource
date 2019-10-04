.class public final Lcom/mapbox/android/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestLocationEngine(Landroid/content/Context;)Lcom/mapbox/android/a/b/c;
    .locals 2

    const-string v0, "context == null"

    .line 45
    invoke-static {p0, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms.location.LocationServices"

    .line 47
    invoke-static {v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.google.android.gms.common.GoogleApiAvailability"

    .line 48
    invoke-static {v1}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/b;->getInstance()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/b;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 1057
    new-instance v0, Lcom/mapbox/android/a/b/g;

    new-instance v1, Lcom/mapbox/android/a/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mapbox/android/a/b/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/mapbox/android/a/b/g;-><init>(Lcom/mapbox/android/a/b/e;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/mapbox/android/a/b/g;

    new-instance v1, Lcom/mapbox/android/a/b/j;

    .line 1058
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mapbox/android/a/b/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/mapbox/android/a/b/g;-><init>(Lcom/mapbox/android/a/b/e;)V

    return-object v0
.end method

.method public static getBestLocationEngine(Landroid/content/Context;Z)Lcom/mapbox/android/a/b/c;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/mapbox/android/a/b/f;->getBestLocationEngine(Landroid/content/Context;)Lcom/mapbox/android/a/b/c;

    move-result-object p0

    return-object p0
.end method
