.class public Lcom/mapbox/mapboxsdk/attribution/Attribution;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final IMPROVE_MAP_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MAPBOX_URL:Ljava/lang/String; = "https://www.mapbox.com/about/maps/"

.field private static final OPENSTREETMAP:Ljava/lang/String; = "OpenStreetMap"

.field private static final OPENSTREETMAP_ABBR:Ljava/lang/String; = "OSM"

.field static final TELEMETRY:Ljava/lang/String; = "Telemetry Settings"

.field static final TELEMETRY_URL:Ljava/lang/String; = "https://www.mapbox.com/telemetry/"


# instance fields
.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sput-object v0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->IMPROVE_MAP_URLS:Ljava/util/List;

    const-string v1, "https://www.mapbox.com/feedback/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->IMPROVE_MAP_URLS:Ljava/util/List;

    const-string v1, "https://www.mapbox.com/map-feedback/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->IMPROVE_MAP_URLS:Ljava/util/List;

    const-string v1, "https://apps.mapbox.com/feedback/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/attribution/Attribution;

    .line 58
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/attribution/Attribution;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAbbreviated()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    const-string v1, "OpenStreetMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OSM"

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/attribution/Attribution;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
