.class final Lcom/mapbox/android/telemetry/ah$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/ah$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/telemetry/ah$1;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/ah$1;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ah$1$2;->a:Lcom/mapbox/android/telemetry/ah$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/mapbox/android/telemetry/ab;)Lcom/mapbox/android/telemetry/af;
    .locals 8

    .line 30
    iget-object v0, p0, Lcom/mapbox/android/telemetry/ah$1$2;->a:Lcom/mapbox/android/telemetry/ah$1;

    iget-object v0, v0, Lcom/mapbox/android/telemetry/ah$1;->a:Lcom/mapbox/android/telemetry/ah;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/ah$1$2;->a:Lcom/mapbox/android/telemetry/ah$1;

    iget-object v1, v1, Lcom/mapbox/android/telemetry/ah$1;->a:Lcom/mapbox/android/telemetry/ah;

    .line 1011
    iget-object v7, v1, Lcom/mapbox/android/telemetry/ah;->c:Lcom/mapbox/android/telemetry/e;

    .line 3014
    iget-object v1, p1, Lcom/mapbox/android/telemetry/ab;->a:Lcom/mapbox/android/telemetry/o;

    .line 3018
    iget-object v2, p1, Lcom/mapbox/android/telemetry/ab;->b:Ljava/lang/String;

    .line 3026
    iget-object v3, p1, Lcom/mapbox/android/telemetry/ab;->c:Ljava/lang/String;

    .line 2082
    new-instance p1, Lcom/mapbox/android/telemetry/ai$a;

    invoke-direct {p1}, Lcom/mapbox/android/telemetry/ai$a;-><init>()V

    .line 3096
    iput-object v1, p1, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    .line 2084
    invoke-static {v2}, Lcom/mapbox/android/telemetry/ai;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/android/telemetry/ai$a;->a(Lokhttp3/HttpUrl;)Lcom/mapbox/android/telemetry/ai$a;

    move-result-object p1

    .line 2085
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/ai$a;->a()Lcom/mapbox/android/telemetry/ai;

    move-result-object v5

    .line 2086
    new-instance p1, Lcom/mapbox/android/telemetry/af;

    iget-object v4, v0, Lcom/mapbox/android/telemetry/ah;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/mapbox/android/telemetry/ah;->b:Lcom/mapbox/android/telemetry/w;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mapbox/android/telemetry/af;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/ai;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    return-object p1
.end method
