.class public final Lcom/mapbox/android/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lcom/mapbox/android/a/c/a;


# direct methods
.method public constructor <init>(Lcom/mapbox/android/a/c/a;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mapbox/android/a/c/b;->a:I

    .line 26
    iput-object p1, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static areLocationPermissionsGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1043
    invoke-static {p0, v0}, Lcom/mapbox/android/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1047
    invoke-static {p0, v0}, Lcom/mapbox/android/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static areRuntimePermissionsRequired()Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getListener()Lcom/mapbox/android/a/c/a;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    return-object v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    if-eqz p1, :cond_2

    .line 99
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    const/4 p2, 0x1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    invoke-interface {p1, p2}, Lcom/mapbox/android/a/c/a;->onPermissionResult(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final requestLocationPermissions(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    .line 1072
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_1

    .line 1073
    aget-object v4, v0, v1

    .line 1074
    invoke-static {p1, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1075
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v3, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1081
    iget-object v3, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    invoke-interface {v3, v2}, Lcom/mapbox/android/a/c/a;->onExplanationNeeded(Ljava/util/List;)V

    .line 1084
    :cond_2
    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final setListener(Lcom/mapbox/android/a/c/a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mapbox/android/a/c/b;->b:Lcom/mapbox/android/a/c/a;

    return-void
.end method
