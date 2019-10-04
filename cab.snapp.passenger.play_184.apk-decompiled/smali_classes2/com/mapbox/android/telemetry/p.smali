.class final Lcom/mapbox/android/telemetry/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/mapbox/android/telemetry/q;
    .locals 2

    .line 7
    new-instance v0, Lcom/mapbox/android/telemetry/k;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/k;-><init>()V

    .line 8
    new-instance v1, Lcom/mapbox/android/telemetry/ae;

    invoke-direct {v1}, Lcom/mapbox/android/telemetry/ae;-><init>()V

    .line 9
    invoke-interface {v1, v0}, Lcom/mapbox/android/telemetry/q;->nextChain(Lcom/mapbox/android/telemetry/q;)V

    .line 10
    new-instance v0, Lcom/mapbox/android/telemetry/h;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/h;-><init>()V

    .line 11
    invoke-interface {v0, v1}, Lcom/mapbox/android/telemetry/q;->nextChain(Lcom/mapbox/android/telemetry/q;)V

    return-object v0
.end method
