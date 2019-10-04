.class public final Lcom/mapbox/android/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/mapbox/android/b/c;->a:F

    .line 22
    iput p2, p0, Lcom/mapbox/android/b/c;->b:F

    return-void
.end method


# virtual methods
.method public final addNewPosition(FF)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/mapbox/android/b/c;->e:F

    iput v0, p0, Lcom/mapbox/android/b/c;->c:F

    .line 32
    iget v0, p0, Lcom/mapbox/android/b/c;->f:F

    iput v0, p0, Lcom/mapbox/android/b/c;->d:F

    .line 34
    iput p1, p0, Lcom/mapbox/android/b/c;->e:F

    .line 35
    iput p2, p0, Lcom/mapbox/android/b/c;->f:F

    .line 37
    iget p1, p0, Lcom/mapbox/android/b/c;->c:F

    iget p2, p0, Lcom/mapbox/android/b/c;->e:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mapbox/android/b/c;->g:F

    .line 38
    iget p1, p0, Lcom/mapbox/android/b/c;->d:F

    iget v0, p0, Lcom/mapbox/android/b/c;->f:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mapbox/android/b/c;->h:F

    .line 40
    iget p1, p0, Lcom/mapbox/android/b/c;->a:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mapbox/android/b/c;->i:F

    .line 41
    iget p1, p0, Lcom/mapbox/android/b/c;->b:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mapbox/android/b/c;->j:F

    return-void
.end method

.method public final getCurrentX()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/mapbox/android/b/c;->e:F

    return v0
.end method

.method public final getCurrentY()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/mapbox/android/b/c;->f:F

    return v0
.end method

.method public final getDistanceXSinceLast()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/mapbox/android/b/c;->g:F

    return v0
.end method

.method public final getDistanceXSinceStart()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/mapbox/android/b/c;->i:F

    return v0
.end method

.method public final getDistanceYSinceLast()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/mapbox/android/b/c;->h:F

    return v0
.end method

.method public final getDistanceYSinceStart()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/mapbox/android/b/c;->j:F

    return v0
.end method

.method public final getInitialX()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/mapbox/android/b/c;->a:F

    return v0
.end method

.method public final getInitialY()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/mapbox/android/b/c;->b:F

    return v0
.end method

.method public final getPreviousX()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/mapbox/android/b/c;->c:F

    return v0
.end method

.method public final getPreviousY()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/mapbox/android/b/c;->d:F

    return v0
.end method
