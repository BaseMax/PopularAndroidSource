.class public final Lcom/google/android/gms/internal/ik;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field final e:Lcom/google/android/gms/internal/zzcgx;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ik;->f:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ik;->c:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ik;->d:J

    iget-wide p4, p0, Lcom/google/android/gms/internal/ik;->d:J

    const-wide/16 p6, 0x0

    cmp-long p2, p4, p6

    if-eqz p2, :cond_1

    iget-wide p6, p0, Lcom/google/android/gms/internal/ik;->c:J

    cmp-long p2, p4, p6

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId"

    invoke-virtual {p2, p4, p3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1, p9}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/jx;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcgx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/zzcgx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p9}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ik;->f:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ik;->c:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ik;->d:J

    iget-wide p4, p0, Lcom/google/android/gms/internal/ik;->d:J

    const-wide/16 p6, 0x0

    cmp-long p2, p4, p6

    if-eqz p2, :cond_1

    iget-wide p6, p0, Lcom/google/android/gms/internal/ik;->c:J

    cmp-long p2, p4, p6

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Event created with reverse previous/current timestamps. appId"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/jx;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzcgx;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Param name can\'t be null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/na;->zzk(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ix;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Param value can\'t be null"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/zzcgx;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/jx;J)Lcom/google/android/gms/internal/ik;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/ik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ik;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ik;->c:J

    iget-object v9, p0, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    move-object v0, v10

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/zzcgx;)V

    return-object v10
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event{appId=\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', name=\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', params="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method