.class public Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final locationComponentOptions:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private final locationEngine:Lcom/mapbox/android/a/b/c;

.field private final locationEngineRequest:Lcom/mapbox/android/a/b/h;

.field private final style:Lcom/mapbox/mapboxsdk/maps/Style;

.field private final styleRes:I

.field private final useDefaultLocationEngine:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;IZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 33
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngine:Lcom/mapbox/android/a/b/c;

    .line 34
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    .line 35
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationComponentOptions:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 36
    iput p6, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->styleRes:I

    .line 37
    iput-boolean p7, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->useDefaultLocationEngine:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;IZLcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$1;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;IZ)V

    return-void
.end method

.method public static builder(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;
    .locals 1

    .line 47
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-object v0
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->context:Landroid/content/Context;

    return-object v0
.end method

.method public locationComponentOptions()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationComponentOptions:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object v0
.end method

.method public locationEngine()Lcom/mapbox/android/a/b/c;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngine:Lcom/mapbox/android/a/b/c;

    return-object v0
.end method

.method public locationEngineRequest()Lcom/mapbox/android/a/b/h;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    return-object v0
.end method

.method public style()Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object v0
.end method

.method public styleRes()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->styleRes:I

    return v0
.end method

.method public useDefaultLocationEngine()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->useDefaultLocationEngine:Z

    return v0
.end method
