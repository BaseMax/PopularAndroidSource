.class final Lcom/mapbox/android/telemetry/ah$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mapbox/android/telemetry/o;",
        "Lcom/mapbox/android/telemetry/ag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/telemetry/ah;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/ah;)V
    .locals 1

    .line 19
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ah$1;->a:Lcom/mapbox/android/telemetry/ah;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 21
    sget-object p1, Lcom/mapbox/android/telemetry/o;->CHINA:Lcom/mapbox/android/telemetry/o;

    new-instance v0, Lcom/mapbox/android/telemetry/ah$1$1;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/ah$1$1;-><init>(Lcom/mapbox/android/telemetry/ah$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/android/telemetry/ah$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object p1, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    new-instance v0, Lcom/mapbox/android/telemetry/ah$1$2;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/ah$1$2;-><init>(Lcom/mapbox/android/telemetry/ah$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/android/telemetry/ah$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p1, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    new-instance v0, Lcom/mapbox/android/telemetry/ah$1$3;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/ah$1$3;-><init>(Lcom/mapbox/android/telemetry/ah$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/android/telemetry/ah$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
