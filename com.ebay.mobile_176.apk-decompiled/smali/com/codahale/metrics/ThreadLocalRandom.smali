.class Lcom/codahale/metrics/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/codahale/metrics/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/codahale/metrics/ThreadLocalRandom$1;

    invoke-direct {v0}, Lcom/codahale/metrics/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Lcom/codahale/metrics/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/codahale/metrics/ThreadLocalRandom;->initialized:Z

    return-void
.end method

.method public static current()Lcom/codahale/metrics/ThreadLocalRandom;
    .locals 1

    .line 66
    sget-object v0, Lcom/codahale/metrics/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/ThreadLocalRandom;

    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4

    .line 82
    iget-wide v0, p0, Lcom/codahale/metrics/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long v0, v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codahale/metrics/ThreadLocalRandom;->rnd:J

    .line 83
    iget-wide v0, p0, Lcom/codahale/metrics/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 p1, p1, 0x30

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public setSeed(J)V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/codahale/metrics/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    const-wide v0, 0x5deece66dL

    xor-long/2addr p1, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p1, v0

    .line 78
    iput-wide p1, p0, Lcom/codahale/metrics/ThreadLocalRandom;->rnd:J

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
