.class final Lcom/mapbox/android/telemetry/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mapbox/android/telemetry/r;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/r;Ljava/util/List;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mapbox/android/telemetry/r$1;->b:Lcom/mapbox/android/telemetry/r;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/r$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r$1;->b:Lcom/mapbox/android/telemetry/r;

    .line 1011
    iget-object v0, v0, Lcom/mapbox/android/telemetry/r;->a:Lcom/mapbox/android/telemetry/u;

    .line 64
    iget-object v1, p0, Lcom/mapbox/android/telemetry/r$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/mapbox/android/telemetry/u;->onFullQueue(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
