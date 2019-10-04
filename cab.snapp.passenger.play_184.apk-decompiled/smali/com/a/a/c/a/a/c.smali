.class public final Lcom/a/a/c/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final availableInternalStorage:J

.field public final availablePhysicalMemory:J

.field public final batteryCapacity:I

.field public final batteryVelocity:I

.field public final orientation:I

.field public final proximity:Z

.field public final totalInternalStorage:J

.field public final totalPhysicalMemory:J


# direct methods
.method public constructor <init>(IJJJJIIZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/a/a/c/a/a/c;->orientation:I

    .line 52
    iput-wide p2, p0, Lcom/a/a/c/a/a/c;->totalPhysicalMemory:J

    .line 53
    iput-wide p4, p0, Lcom/a/a/c/a/a/c;->totalInternalStorage:J

    .line 54
    iput-wide p6, p0, Lcom/a/a/c/a/a/c;->availablePhysicalMemory:J

    .line 55
    iput-wide p8, p0, Lcom/a/a/c/a/a/c;->availableInternalStorage:J

    .line 56
    iput p10, p0, Lcom/a/a/c/a/a/c;->batteryCapacity:I

    .line 57
    iput p11, p0, Lcom/a/a/c/a/a/c;->batteryVelocity:I

    .line 58
    iput-boolean p12, p0, Lcom/a/a/c/a/a/c;->proximity:Z

    return-void
.end method
