.class public Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;
.super Ljava/lang/Object;
.source "HttpRequestRetryPolicyDefault.java"

# interfaces
.implements Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;


# static fields
.field public static final DEFAULT_RETRY_COUNT:I = 0x5

.field public static final DEFAULT_RETRY_TIMEOUT_MILLIS:J = 0x1388L

.field private static final RANDOM:Ljava/util/Random;

.field public static final RETRY_COUNT_INFINITE:I = -0x1


# instance fields
.field private maxRetryCount:I

.field private retryTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->maxRetryCount:I

    const-wide/16 v0, 0x1388

    .line 30
    iput-wide v0, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->retryTimeoutMillis:J

    return-void
.end method


# virtual methods
.method public getRetryTimeoutMillis(I)J
    .locals 6

    .line 59
    iget-wide v0, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->retryTimeoutMillis:J

    long-to-double v0, v0

    add-int/lit8 p1, p1, -0x1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    .line 60
    div-long/2addr v0, v2

    long-to-double v0, v0

    sget-object p1, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->RANDOM:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->maxRetryCount:I

    return-void
.end method

.method public setRetryTimeoutMillis(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->retryTimeoutMillis:J

    return-void
.end method

.method public shouldRetryRequest(II)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x190

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge p1, v1, :cond_0

    return v0

    .line 45
    :cond_0
    iget p1, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->maxRetryCount:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 49
    :cond_1
    iget p1, p0, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;->maxRetryCount:I

    if-gt p2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
