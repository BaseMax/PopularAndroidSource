.class final Lcom/mapbox/android/telemetry/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:J = 0x2bf20L


# instance fields
.field final b:Landroid/content/Context;

.field final c:Lcom/mapbox/android/telemetry/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mapbox/android/telemetry/a;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mapbox/android/telemetry/aa;->b:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/mapbox/android/telemetry/aa;->c:Lcom/mapbox/android/telemetry/a;

    .line 1024
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x927c0

    .line 1025
    sput-wide p1, Lcom/mapbox/android/telemetry/aa;->a:J

    :cond_0
    return-void
.end method
