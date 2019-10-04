.class public final Lc/e/a/b/g/f/Y;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/Y;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    .line 5
    sget-object v1, Lc/e/a/b/g/f/Zc;->f:[Ljava/lang/String;

    iput-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 7

    .line 12
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->a()I

    move-result v1

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 21
    :goto_0
    iget-object v5, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 22
    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 23
    invoke-static {v5}, Lc/e/a/b/g/f/Qc;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_5
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 25
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 26
    :cond_1
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 27
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 29
    iget-object v3, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 31
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_4
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    iput-object v0, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 36
    :cond_6
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_7
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->a()I

    move-result v1

    .line 38
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 39
    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(I)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->a(I)Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    goto :goto_0

    :cond_8
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->b(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 9
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p1, v2, v1}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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
    instance-of v1, p1, Lc/e/a/b/g/f/Y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/Y;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p1, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_4
    iget-object v3, p1, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 10
    iget-object v1, p1, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 11
    :cond_6
    iget-object v3, p1, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 12
    :cond_7
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    iget-object v3, p1, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 13
    :cond_8
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 14
    :cond_9
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_a
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lc/e/a/b/g/f/Y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

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
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
