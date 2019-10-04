.class final Lcom/mapbox/android/telemetry/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/telemetry/x;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/x;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x$2;->a:Lcom/mapbox/android/telemetry/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 0

    return-void
.end method

.method public final onPeriodRaised()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x$2;->a:Lcom/mapbox/android/telemetry/x;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/x;)V

    return-void
.end method
