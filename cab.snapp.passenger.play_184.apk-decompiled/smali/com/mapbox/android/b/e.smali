.class public final Lcom/mapbox/android/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/mapbox/android/b/e;->a:F

    .line 17
    iput p2, p0, Lcom/mapbox/android/b/e;->b:F

    .line 18
    iput p3, p0, Lcom/mapbox/android/b/e;->c:F

    .line 19
    iput p4, p0, Lcom/mapbox/android/b/e;->d:F

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/mapbox/android/b/e;->e:F

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p1, p3

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/mapbox/android/b/e;->f:F

    return-void
.end method


# virtual methods
.method public final getCurrFingersDiffX()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/mapbox/android/b/e;->c:F

    return v0
.end method

.method public final getCurrFingersDiffXY()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/mapbox/android/b/e;->f:F

    return v0
.end method

.method public final getCurrFingersDiffY()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/mapbox/android/b/e;->d:F

    return v0
.end method

.method public final getPrevFingersDiffX()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/mapbox/android/b/e;->a:F

    return v0
.end method

.method public final getPrevFingersDiffXY()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/mapbox/android/b/e;->e:F

    return v0
.end method

.method public final getPrevFingersDiffY()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/mapbox/android/b/e;->b:F

    return v0
.end method
