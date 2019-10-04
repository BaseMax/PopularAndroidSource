.class final Lcom/mapbox/android/telemetry/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextChain(Lcom/mapbox/android/telemetry/q;)V
    .locals 0

    return-void
.end method

.method public final obtainServerInformation(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/ab;
    .locals 1

    .line 14
    new-instance p1, Lcom/mapbox/android/telemetry/ab;

    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    invoke-direct {p1, v0}, Lcom/mapbox/android/telemetry/ab;-><init>(Lcom/mapbox/android/telemetry/o;)V

    return-object p1
.end method
