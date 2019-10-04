.class final Lcom/mapbox/android/telemetry/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mapbox/android/telemetry/t;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/mapbox/android/telemetry/t;->b:Lokhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mapbox/android/telemetry/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lokhttp3/MediaType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mapbox/android/telemetry/t;->b:Lokhttp3/MediaType;

    return-object v0
.end method
