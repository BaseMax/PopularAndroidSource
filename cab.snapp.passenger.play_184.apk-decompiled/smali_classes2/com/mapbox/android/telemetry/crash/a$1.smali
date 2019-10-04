.class final Lcom/mapbox/android/telemetry/crash/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/crash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mapbox/android/telemetry/crash/a;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/crash/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mapbox/android/telemetry/crash/a$1;->c:Lcom/mapbox/android/telemetry/crash/a;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/crash/a$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mapbox/android/telemetry/crash/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHttpFailure(Ljava/lang/String;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/mapbox/android/telemetry/crash/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 155
    iget-object p1, p0, Lcom/mapbox/android/telemetry/crash/a$1;->c:Lcom/mapbox/android/telemetry/crash/a;

    .line 2029
    iget-object p1, p1, Lcom/mapbox/android/telemetry/crash/a;->a:Lcom/mapbox/android/telemetry/x;

    .line 155
    invoke-virtual {p1, p0}, Lcom/mapbox/android/telemetry/x;->removeTelemetryListener(Lcom/mapbox/android/telemetry/aj;)Z

    return-void
.end method

.method public final onHttpResponse(ZI)V
    .locals 0

    .line 146
    iget-object p2, p0, Lcom/mapbox/android/telemetry/crash/a$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object p1, p0, Lcom/mapbox/android/telemetry/crash/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 148
    iget-object p1, p0, Lcom/mapbox/android/telemetry/crash/a$1;->c:Lcom/mapbox/android/telemetry/crash/a;

    .line 1029
    iget-object p1, p1, Lcom/mapbox/android/telemetry/crash/a;->a:Lcom/mapbox/android/telemetry/x;

    .line 148
    invoke-virtual {p1, p0}, Lcom/mapbox/android/telemetry/x;->removeTelemetryListener(Lcom/mapbox/android/telemetry/aj;)Z

    return-void
.end method
