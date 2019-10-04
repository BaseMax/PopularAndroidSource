.class final Lcom/mapbox/android/telemetry/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lokhttp3/MediaType;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/mapbox/android/telemetry/ai;

.field e:Lcom/mapbox/android/telemetry/e;

.field private final f:Lcom/mapbox/android/telemetry/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 26
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/af;->a:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/ai;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mapbox/android/telemetry/af;->b:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/mapbox/android/telemetry/af;->c:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 46
    iput-object p4, p0, Lcom/mapbox/android/telemetry/af;->f:Lcom/mapbox/android/telemetry/w;

    .line 47
    iput-object p5, p0, Lcom/mapbox/android/telemetry/af;->e:Lcom/mapbox/android/telemetry/e;

    return-void
.end method

.method static a(Lokhttp3/MultipartBody$Builder;)Lokhttp3/RequestBody;
    .locals 3

    .line 162
    invoke-virtual {p0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    .line 164
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const-string v1, "--01ead4a5-7a67-4703-ad02-589886e00923"

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 165
    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lokhttp3/MultipartBody;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lokhttp3/MultipartBody;->part(I)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 1063
    iget-boolean v0, v0, Lcom/mapbox/android/telemetry/ai;->g:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/mapbox/android/telemetry/af;->d:Lcom/mapbox/android/telemetry/ai;

    .line 2047
    iget-object v0, v0, Lcom/mapbox/android/telemetry/ai;->a:Lcom/mapbox/android/telemetry/o;

    .line 158
    sget-object v1, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
