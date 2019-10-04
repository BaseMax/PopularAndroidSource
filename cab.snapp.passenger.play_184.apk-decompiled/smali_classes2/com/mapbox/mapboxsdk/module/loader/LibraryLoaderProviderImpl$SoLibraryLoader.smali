.class Lcom/mapbox/mapboxsdk/module/loader/LibraryLoaderProviderImpl$SoLibraryLoader;
.super Lcom/mapbox/mapboxsdk/LibraryLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/module/loader/LibraryLoaderProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoLibraryLoader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoLibraryLoader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/LibraryLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/module/loader/LibraryLoaderProviderImpl$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/module/loader/LibraryLoaderProviderImpl$SoLibraryLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)V
    .locals 2

    .line 41
    :try_start_0
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/b/k;->init(Landroid/content/Context;Z)V

    .line 42
    invoke-static {p1}, Lcom/facebook/b/k;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/mapbox/mapboxsdk/exceptions/MapboxConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "SoLibraryLoader"

    const-string v0, "Couldn\'t load so file with relinker, application context missing, call Mapbox.getInstance(Context context, String accessToken) first"

    .line 44
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
