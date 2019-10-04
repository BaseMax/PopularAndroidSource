.class public Lc/e/a/b/g/f/Ab;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/f/cb;


# instance fields
.field public b:Lcom/google/android/gms/internal/measurement/zzdp;

.field public volatile c:Lc/e/a/b/g/f/Sb;

.field public volatile d:Lcom/google/android/gms/internal/measurement/zzdp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/cb;->c()Lc/e/a/b/g/f/cb;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/Ab;->a:Lc/e/a/b/g/f/cb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Sb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    iput-object p1, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    iput-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzfh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    iput-object p1, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    iput-object p1, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    .line 9
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 10
    :cond_1
    :goto_1
    iget-object p1, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    return-object p1
.end method

.method public final a()Lcom/google/android/gms/internal/measurement/zzdp;
    .locals 1

    .line 11
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    return-object v0

    .line 13
    :cond_0
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    monitor-exit p0

    return-object v0

    .line 16
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    if-nez v0, :cond_2

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    iput-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    invoke-interface {v0}, Lc/e/a/b/g/f/Sb;->f()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    .line 19
    :goto_0
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdp;->size()I

    move-result v0

    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    invoke-interface {v0}, Lc/e/a/b/g/f/Sb;->d()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Sb;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lc/e/a/b/g/f/Ab;->b:Lcom/google/android/gms/internal/measurement/zzdp;

    .line 3
    iput-object v1, p0, Lc/e/a/b/g/f/Ab;->d:Lcom/google/android/gms/internal/measurement/zzdp;

    .line 4
    iput-object p1, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lc/e/a/b/g/f/Ab;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/Ab;

    .line 3
    iget-object v0, p0, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/Ab;->c:Lc/e/a/b/g/f/Sb;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/Ab;->a()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v0

    invoke-virtual {p1}, Lc/e/a/b/g/f/Ab;->a()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Lc/e/a/b/g/f/Ub;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Ab;->a(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Sb;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-interface {v1}, Lc/e/a/b/g/f/Ub;->a()Lc/e/a/b/g/f/Sb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Ab;->a(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Sb;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
