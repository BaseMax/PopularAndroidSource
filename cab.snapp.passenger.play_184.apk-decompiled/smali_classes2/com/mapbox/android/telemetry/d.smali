.class public final Lcom/mapbox/android/telemetry/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mapbox/android/telemetry/d;->a:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->obtainCurrentDate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/d;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/mapbox/android/telemetry/d;->c:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/mapbox/android/telemetry/d;->d:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/mapbox/android/telemetry/d;->e:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/mapbox/android/telemetry/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCreated()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mapbox/android/telemetry/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mapbox/android/telemetry/d;->i:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/d;->g:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mapbox/android/telemetry/d;->h:Ljava/lang/String;

    return-void
.end method
