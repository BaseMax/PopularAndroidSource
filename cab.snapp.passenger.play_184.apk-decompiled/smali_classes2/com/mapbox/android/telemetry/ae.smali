.class final Lcom/mapbox/android/telemetry/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/q;


# instance fields
.field private a:Lcom/mapbox/android/telemetry/q;


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

    .line 13
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ae;->a:Lcom/mapbox/android/telemetry/q;

    return-void
.end method

.method public final obtainServerInformation(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/ab;
    .locals 3

    const-string v0, "com.mapbox.TestEventsServer"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mapbox.TestEventsAccessToken"

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/mapbox/android/telemetry/ak;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    new-instance p1, Lcom/mapbox/android/telemetry/ab;

    sget-object v2, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    invoke-direct {p1, v2}, Lcom/mapbox/android/telemetry/ab;-><init>(Lcom/mapbox/android/telemetry/o;)V

    .line 2022
    iput-object v0, p1, Lcom/mapbox/android/telemetry/ab;->b:Ljava/lang/String;

    .line 2030
    iput-object v1, p1, Lcom/mapbox/android/telemetry/ab;->c:Ljava/lang/String;

    return-object p1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/ae;->a:Lcom/mapbox/android/telemetry/q;

    invoke-interface {v0, p1}, Lcom/mapbox/android/telemetry/q;->obtainServerInformation(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/ab;

    move-result-object p1

    return-object p1
.end method
