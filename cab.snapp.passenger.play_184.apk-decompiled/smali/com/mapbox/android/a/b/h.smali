.class public final Lcom/mapbox/android/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/a/b/h$a;
    }
.end annotation


# static fields
.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x1

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x0

.field public static final PRIORITY_LOW_POWER:I = 0x2

.field public static final PRIORITY_NO_POWER:I = 0x3


# instance fields
.field private final a:J

.field private final b:I

.field private final c:F

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(Lcom/mapbox/android/a/b/h$a;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iget-wide v0, p1, Lcom/mapbox/android/a/b/h$a;->a:J

    .line 50
    iput-wide v0, p0, Lcom/mapbox/android/a/b/h;->a:J

    .line 2108
    iget v0, p1, Lcom/mapbox/android/a/b/h$a;->b:I

    .line 51
    iput v0, p0, Lcom/mapbox/android/a/b/h;->b:I

    .line 3108
    iget v0, p1, Lcom/mapbox/android/a/b/h$a;->c:F

    .line 52
    iput v0, p0, Lcom/mapbox/android/a/b/h;->c:F

    .line 4108
    iget-wide v0, p1, Lcom/mapbox/android/a/b/h$a;->d:J

    .line 53
    iput-wide v0, p0, Lcom/mapbox/android/a/b/h;->d:J

    .line 5108
    iget-wide v0, p1, Lcom/mapbox/android/a/b/h$a;->e:J

    .line 54
    iput-wide v0, p0, Lcom/mapbox/android/a/b/h;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/android/a/b/h$a;B)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/mapbox/android/a/b/h;-><init>(Lcom/mapbox/android/a/b/h$a;)V

    return-void
.end method


# virtual methods
.method public final getDisplacemnt()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/mapbox/android/a/b/h;->c:F

    return v0
.end method

.method public final getFastestInterval()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/mapbox/android/a/b/h;->e:J

    return-wide v0
.end method

.method public final getInterval()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/mapbox/android/a/b/h;->a:J

    return-wide v0
.end method

.method public final getMaxWaitTime()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/mapbox/android/a/b/h;->d:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/mapbox/android/a/b/h;->b:I

    return v0
.end method
