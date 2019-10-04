.class final Lcom/a/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/a/b;


# instance fields
.field final a:Lio/fabric/sdk/android/services/concurrency/a/b;

.field final b:Ljava/util/Random;

.field final c:D


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/a/b;D)V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/a/x;-><init>(Lio/fabric/sdk/android/services/concurrency/a/b;DLjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/a/b;DLjava/util/Random;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 55
    iput-object p1, p0, Lcom/a/a/a/x;->a:Lio/fabric/sdk/android/services/concurrency/a/b;

    .line 56
    iput-wide p2, p0, Lcom/a/a/a/x;->c:D

    .line 57
    iput-object p4, p0, Lcom/a/a/a/x;->b:Ljava/util/Random;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "backoff must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jitterPercent must be between 0.0 and 1.0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getDelayMillis(I)J
    .locals 6

    .line 1066
    iget-wide v0, p0, Lcom/a/a/a/x;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v0

    add-double/2addr v0, v2

    .line 1068
    iget-object v2, p0, Lcom/a/a/a/x;->b:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    sub-double/2addr v0, v4

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    .line 62
    iget-object v0, p0, Lcom/a/a/a/x;->a:Lio/fabric/sdk/android/services/concurrency/a/b;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/a/b;->getDelayMillis(I)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-long v0, v4

    return-wide v0
.end method
