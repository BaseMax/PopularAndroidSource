.class public final Lc/e/a/b/g/f/ba;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile c:[Lc/e/a/b/g/f/ba;


# instance fields
.field public d:[Lc/e/a/b/g/f/K;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lc/e/a/b/g/f/K;

    iput-object v0, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method

.method public static a([B)Lc/e/a/b/g/f/ba;
    .locals 1

    .line 27
    new-instance v0, Lc/e/a/b/g/f/ba;

    invoke-direct {v0}, Lc/e/a/b/g/f/ba;-><init>()V

    invoke-static {v0, p0}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Wc;[B)Lc/e/a/b/g/f/Wc;

    check-cast v0, Lc/e/a/b/g/f/ba;

    return-object v0
.end method

.method public static d()[Lc/e/a/b/g/f/ba;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/g/f/ba;->c:[Lc/e/a/b/g/f/ba;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/e/a/b/g/f/Vc;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/e/a/b/g/f/ba;->c:[Lc/e/a/b/g/f/ba;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lc/e/a/b/g/f/ba;

    sput-object v1, Lc/e/a/b/g/f/ba;->c:[Lc/e/a/b/g/f/ba;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b/g/f/ba;->c:[Lc/e/a/b/g/f/ba;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 14
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 15
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 17
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc/e/a/b/g/f/Qc;->a(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc/e/a/b/g/f/Qc;->a(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_4
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 29
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->f()J

    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->f()J

    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 38
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 39
    new-array v0, v0, [Lc/e/a/b/g/f/K;

    if-eqz v1, :cond_7

    .line 40
    iget-object v3, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :cond_7
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 42
    invoke-static {}, Lc/e/a/b/g/f/K;->r()Lc/e/a/b/g/f/bc;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/bc;)Lc/e/a/b/g/f/nb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/K;

    aput-object v2, v0, v1

    .line 43
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    :cond_8
    invoke-static {}, Lc/e/a/b/g/f/K;->r()Lc/e/a/b/g/f/bc;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/bc;)Lc/e/a/b/g/f/nb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/K;

    aput-object v2, v0, v1

    .line 45
    iput-object v0, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v1}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Sb;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lc/e/a/b/g/f/Qc;->b(IJ)V

    .line 9
    :cond_3
    iget-object v0, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lc/e/a/b/g/f/Qc;->b(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->b(II)V

    .line 13
    :cond_5
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
    instance-of v1, p1, Lc/e/a/b/g/f/ba;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/ba;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    iget-object v3, p1, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p1, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 6
    :cond_3
    iget-object v3, p1, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 8
    iget-object v1, p1, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-eqz v1, :cond_6

    return v2

    .line 9
    :cond_5
    iget-object v3, p1, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_6
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    if-nez v1, :cond_7

    .line 11
    iget-object v1, p1, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    if-eqz v1, :cond_8

    return v2

    .line 12
    :cond_7
    iget-object v3, p1, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 13
    :cond_8
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 14
    iget-object v1, p1, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    return v2

    .line 15
    :cond_9
    iget-object v3, p1, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 16
    :cond_a
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    .line 17
    :cond_b
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_c
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_d
    return v2

    :cond_e
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lc/e/a/b/g/f/ba;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 3
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 9
    :cond_4
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
