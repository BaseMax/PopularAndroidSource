.class public final Lc/e/a/b/g/f/W;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/W;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 12
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->a()I

    move-result v1

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 18
    :cond_1
    iget-object v1, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 19
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 21
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 23
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 25
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->a()I

    move-result v1

    .line 31
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    .line 32
    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(I)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    goto :goto_0

    .line 34
    :cond_6
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->a(I)Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->b(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 11
    :cond_4
    invoke-super {p0, p1}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Qc;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc/e/a/b/g/f/W;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/W;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p1, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_4
    iget-object v3, p1, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 10
    iget-object v1, p1, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    return v2

    .line 11
    :cond_6
    iget-object v3, p1, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 12
    :cond_7
    iget-object v1, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 13
    iget-object v1, p1, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    .line 14
    :cond_8
    iget-object v3, p1, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 15
    :cond_9
    iget-object v1, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 16
    iget-object v1, p1, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-eqz v1, :cond_b

    return v2

    .line 17
    :cond_a
    iget-object v3, p1, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 18
    :cond_b
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_0

    .line 19
    :cond_c
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 20
    :cond_d
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    :cond_e
    return v2

    :cond_f
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lc/e/a/b/g/f/W;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v0, v2

    return v0
.end method
