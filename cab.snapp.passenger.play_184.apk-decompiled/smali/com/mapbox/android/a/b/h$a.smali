.class public final Lcom/mapbox/android/a/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:J

.field b:I

.field c:F

.field d:J

.field e:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-wide p1, p0, Lcom/mapbox/android/a/b/h$a;->a:J

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/mapbox/android/a/b/h$a;->b:I

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/mapbox/android/a/b/h$a;->c:F

    const-wide/16 p1, 0x0

    .line 126
    iput-wide p1, p0, Lcom/mapbox/android/a/b/h$a;->d:J

    .line 127
    iput-wide p1, p0, Lcom/mapbox/android/a/b/h$a;->e:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/mapbox/android/a/b/h;
    .locals 2

    .line 189
    new-instance v0, Lcom/mapbox/android/a/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/android/a/b/h;-><init>(Lcom/mapbox/android/a/b/h$a;B)V

    return-object v0
.end method

.method public final setDisplacement(F)Lcom/mapbox/android/a/b/h$a;
    .locals 0

    .line 151
    iput p1, p0, Lcom/mapbox/android/a/b/h$a;->c:F

    return-object p0
.end method

.method public final setFastestInterval(J)Lcom/mapbox/android/a/b/h$a;
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/mapbox/android/a/b/h$a;->e:J

    return-object p0
.end method

.method public final setMaxWaitTime(J)Lcom/mapbox/android/a/b/h$a;
    .locals 0

    .line 166
    iput-wide p1, p0, Lcom/mapbox/android/a/b/h$a;->d:J

    return-object p0
.end method

.method public final setPriority(I)Lcom/mapbox/android/a/b/h$a;
    .locals 0

    .line 139
    iput p1, p0, Lcom/mapbox/android/a/b/h$a;->b:I

    return-object p0
.end method
