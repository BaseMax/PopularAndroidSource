.class public Lcom/codahale/metrics/UniformSnapshot;
.super Lcom/codahale/metrics/Snapshot;
.source "UniformSnapshot.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 16
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/codahale/metrics/UniformSnapshot;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/codahale/metrics/Snapshot;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 27
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/codahale/metrics/Snapshot;-><init>()V

    .line 40
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    .line 41
    iget-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/OutputStream;)V
    .locals 8

    .line 172
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lcom/codahale/metrics/UniformSnapshot;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 174
    :try_start_0
    iget-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, p1, v3

    const-string v6, "%d%n"

    const/4 v7, 0x1

    .line 175
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    throw p1
.end method

.method public getMax()J
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    iget-object v1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getMean()D
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v0, v4

    long-to-double v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getMin()J
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getStdDev()D
    .locals 10

    .line 149
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    return-wide v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/codahale/metrics/UniformSnapshot;->getMean()D

    move-result-wide v4

    .line 156
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-wide v8, v0, v7

    long-to-double v8, v8

    sub-double/2addr v8, v4

    mul-double v8, v8, v8

    add-double/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    sub-int/2addr v0, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(D)D
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_3

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v2, v2

    if-nez v2, :cond_0

    return-wide v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-double v2, v0

    mul-double p1, p1, v2

    double-to-int v0, p1

    if-ge v0, v1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-double p1, v0

    return-wide p1

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 68
    iget-object p1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    iget-object p2, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length p2, p2

    sub-int/2addr p2, v1

    aget-wide v0, p1, p2

    long-to-double p1, v0

    return-wide p1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    long-to-double v1, v2

    .line 72
    iget-object v3, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    aget-wide v4, v3, v0

    long-to-double v3, v4

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr p1, v5

    sub-double/2addr v3, v1

    mul-double p1, p1, v3

    add-double/2addr v1, p1

    return-wide v1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not in [0..1]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValues()[J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    iget-object v1, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/codahale/metrics/UniformSnapshot;->values:[J

    array-length v0, v0

    return v0
.end method
