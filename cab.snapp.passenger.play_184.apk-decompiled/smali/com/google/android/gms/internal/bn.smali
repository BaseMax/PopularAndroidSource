.class public final Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:I

.field private c:D

.field private d:J

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/common/util/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/bn;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/d;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/d;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/Object;

    const/16 p3, 0x3c

    iput p3, p0, Lcom/google/android/gms/internal/bn;->b:I

    iget p3, p0, Lcom/google/android/gms/internal/bn;->b:I

    int-to-double v0, p3

    iput-wide v0, p0, Lcom/google/android/gms/internal/bn;->c:D

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/gms/internal/bn;->a:J

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->g:Lcom/google/android/gms/common/util/d;

    return-void
.end method


# virtual methods
.method public final zzzn()Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->g:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/bn;->c:D

    iget v5, p0, Lcom/google/android/gms/internal/bn;->b:I

    int-to-double v5, v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/bn;->d:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/bn;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/bn;->b:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/bn;->c:D

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/bn;->c:D

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/bn;->d:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/bn;->c:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/bn;->c:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/bn;->c:D

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/bo;->zzcu(Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
