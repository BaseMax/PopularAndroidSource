.class final Lcom/mapbox/android/telemetry/ah$1$3;
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

    .line 33
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ah$1$3;->a:Lcom/mapbox/android/telemetry/ah$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/mapbox/android/telemetry/ab;)Lcom/mapbox/android/telemetry/af;
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/mapbox/android/telemetry/ah$1$3;->a:Lcom/mapbox/android/telemetry/ah$1;

    iget-object p1, p1, Lcom/mapbox/android/telemetry/ah$1;->a:Lcom/mapbox/android/telemetry/ah;

    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/ah$1$3;->a:Lcom/mapbox/android/telemetry/ah$1;

    iget-object v1, v1, Lcom/mapbox/android/telemetry/ah$1;->a:Lcom/mapbox/android/telemetry/ah;

    .line 1011
    iget-object v1, v1, Lcom/mapbox/android/telemetry/ah;->c:Lcom/mapbox/android/telemetry/e;

    .line 2011
    invoke-virtual {p1, v0, v1}, Lcom/mapbox/android/telemetry/ah;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;)Lcom/mapbox/android/telemetry/af;

    move-result-object p1

    return-object p1
.end method
