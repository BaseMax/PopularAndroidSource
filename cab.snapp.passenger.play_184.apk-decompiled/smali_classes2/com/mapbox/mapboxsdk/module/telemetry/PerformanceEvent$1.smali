.class Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$1;
.super Lcom/google/gson/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;-><init>(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b/a<",
        "Ljava/util/ArrayList<",
        "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$1;->this$0:Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;

    invoke-direct {p0}, Lcom/google/gson/b/a;-><init>()V

    return-void
.end method
