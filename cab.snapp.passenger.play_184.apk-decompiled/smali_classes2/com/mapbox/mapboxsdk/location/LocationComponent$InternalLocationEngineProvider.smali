.class Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalLocationEngineProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBestLocationEngine(Landroid/content/Context;Z)Lcom/mapbox/android/a/b/c;
    .locals 0

    .line 1568
    invoke-static {p1, p2}, Lcom/mapbox/android/a/b/f;->getBestLocationEngine(Landroid/content/Context;Z)Lcom/mapbox/android/a/b/c;

    move-result-object p1

    return-object p1
.end method
