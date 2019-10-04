.class public abstract Lcom/mapbox/mapboxsdk/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT:Lcom/mapbox/mapboxsdk/LibraryLoader;

.field private static final TAG:Ljava/lang/String; = "Mbgl-LibraryLoader"

.field private static loaded:Z

.field private static volatile loader:Lcom/mapbox/mapboxsdk/LibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getModuleProvider()Lcom/mapbox/mapboxsdk/ModuleProvider;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/ModuleProvider;->createLibraryLoaderProvider()Lcom/mapbox/mapboxsdk/LibraryLoaderProvider;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/LibraryLoaderProvider;->getDefaultLibraryLoader()Lcom/mapbox/mapboxsdk/LibraryLoader;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/mapbox/mapboxsdk/LibraryLoader;->DEFAULT:Lcom/mapbox/mapboxsdk/LibraryLoader;

    sput-object v0, Lcom/mapbox/mapboxsdk/LibraryLoader;->loader:Lcom/mapbox/mapboxsdk/LibraryLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 3

    .line 41
    :try_start_0
    sget-boolean v0, Lcom/mapbox/mapboxsdk/LibraryLoader;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/mapbox/mapboxsdk/LibraryLoader;->loaded:Z

    .line 43
    sget-object v0, Lcom/mapbox/mapboxsdk/LibraryLoader;->loader:Lcom/mapbox/mapboxsdk/LibraryLoader;

    const-string v1, "mapbox-gl"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/LibraryLoader;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 46
    sput-boolean v1, Lcom/mapbox/mapboxsdk/LibraryLoader;->loaded:Z

    const-string v1, "Failed to load native shared library."

    const-string v2, "Mbgl-LibraryLoader"

    .line 48
    invoke-static {v2, v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/MapStrictMode;->strictModeViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLibraryLoader(Lcom/mapbox/mapboxsdk/LibraryLoader;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/mapbox/mapboxsdk/LibraryLoader;->loader:Lcom/mapbox/mapboxsdk/LibraryLoader;

    return-void
.end method


# virtual methods
.method public abstract load(Ljava/lang/String;)V
.end method
