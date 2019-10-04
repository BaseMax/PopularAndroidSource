.class final Lcom/mapbox/android/telemetry/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/x;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mapbox/android/telemetry/x;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/x;Ljava/util/List;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x$3;->b:Lcom/mapbox/android/telemetry/x;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/x$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x$3;->b:Lcom/mapbox/android/telemetry/x;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x$3;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/x;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
