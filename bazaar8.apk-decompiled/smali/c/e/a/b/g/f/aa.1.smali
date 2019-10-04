.class public final Lc/e/a/b/g/f/aa;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/aa;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:[Lc/e/a/b/g/f/F;

.field public g:[Lc/e/a/b/g/f/Z;

.field public h:[Lc/e/a/b/g/f/S;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Lc/e/a/b/g/f/F;

    iput-object v1, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    .line 6
    invoke-static {}, Lc/e/a/b/g/f/Z;->d()[Lc/e/a/b/g/f/Z;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    .line 7
    invoke-static {}, Lc/e/a/b/g/f/S;->d()[Lc/e/a/b/g/f/S;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    .line 8
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 24
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 25
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc/e/a/b/g/f/Qc;->a(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 28
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_1
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lc/e/a/b/g/f/Qc;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v4, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 33
    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    .line 34
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 35
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    const/4 v0, 0x0

    .line 36
    :goto_1
    iget-object v4, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    array-length v5, v4

    if-ge v0, v5, :cond_7

    .line 37
    aget-object v4, v4, v0

    if-eqz v4, :cond_6

    const/4 v5, 0x5

    .line 38
    invoke-static {v5, v4}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    .line 39
    :cond_8
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    .line 40
    :goto_2
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    array-length v4, v1

    if-ge v3, v4, :cond_a

    .line 41
    aget-object v1, v1, v3

    if-eqz v1, :cond_9

    const/4 v4, 0x6

    .line 42
    invoke-static {v4, v1}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 43
    :cond_a
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/4 v3, 0x7

    .line 44
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_b
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v3, 0x8

    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12

    if-eq v0, v1, :cond_10

    const/16 v1, 0x18

    if-eq v0, v1, :cond_f

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 49
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_3
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 54
    new-array v0, v0, [Lc/e/a/b/g/f/S;

    if-eqz v1, :cond_5

    .line 55
    iget-object v3, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 57
    new-instance v2, Lc/e/a/b/g/f/S;

    invoke-direct {v2}, Lc/e/a/b/g/f/S;-><init>()V

    aput-object v2, v0, v1

    .line 58
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 59
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    :cond_6
    new-instance v2, Lc/e/a/b/g/f/S;

    invoke-direct {v2}, Lc/e/a/b/g/f/S;-><init>()V

    aput-object v2, v0, v1

    .line 61
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 62
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    goto :goto_0

    .line 63
    :cond_7
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 65
    new-array v0, v0, [Lc/e/a/b/g/f/Z;

    if-eqz v1, :cond_9

    .line 66
    iget-object v3, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    .line 68
    new-instance v2, Lc/e/a/b/g/f/Z;

    invoke-direct {v2}, Lc/e/a/b/g/f/Z;-><init>()V

    aput-object v2, v0, v1

    .line 69
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 70
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 71
    :cond_a
    new-instance v2, Lc/e/a/b/g/f/Z;

    invoke-direct {v2}, Lc/e/a/b/g/f/Z;-><init>()V

    aput-object v2, v0, v1

    .line 72
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 73
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    goto/16 :goto_0

    .line 74
    :cond_b
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 76
    new-array v0, v0, [Lc/e/a/b/g/f/F;

    if-eqz v1, :cond_d

    .line 77
    iget-object v3, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    :cond_d
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_e

    .line 79
    invoke-static {}, Lc/e/a/b/g/f/F;->s()Lc/e/a/b/g/f/bc;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/bc;)Lc/e/a/b/g/f/nb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/F;

    aput-object v2, v0, v1

    .line 80
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 81
    :cond_e
    invoke-static {}, Lc/e/a/b/g/f/F;->s()Lc/e/a/b/g/f/bc;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/bc;)Lc/e/a/b/g/f/nb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/F;

    aput-object v2, v0, v1

    .line 82
    iput-object v0, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    goto/16 :goto_0

    .line 83
    :cond_f
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 85
    :cond_10
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 86
    :cond_11
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->f()J

    move-result-wide v0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lc/e/a/b/g/f/Qc;->b(IJ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->b(II)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 9
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 10
    invoke-virtual {p1, v3, v2}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Sb;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 12
    :goto_1
    iget-object v2, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 13
    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 14
    invoke-virtual {p1, v3, v2}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    .line 16
    :goto_2
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 17
    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    .line 18
    invoke-virtual {p1, v2, v0}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_8
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x7

    .line 20
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 23
    :cond_a
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
    instance-of v1, p1, Lc/e/a/b/g/f/aa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/aa;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p1, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_4
    iget-object v3, p1, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 10
    iget-object v1, p1, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    return v2

    .line 11
    :cond_6
    iget-object v3, p1, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 12
    :cond_7
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    iget-object v3, p1, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 13
    :cond_8
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    iget-object v3, p1, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 14
    :cond_9
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    iget-object v3, p1, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 15
    :cond_a
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 16
    iget-object v1, p1, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    if-eqz v1, :cond_c

    return v2

    .line 17
    :cond_b
    iget-object v3, p1, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 18
    :cond_c
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 19
    iget-object v1, p1, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    return v2

    .line 20
    :cond_d
    iget-object v3, p1, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 21
    :cond_e
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_0

    .line 22
    :cond_f
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 23
    :cond_10
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1

    :cond_11
    return v2

    :cond_12
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lc/e/a/b/g/f/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->f:[Lc/e/a/b/g/f/F;

    .line 6
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->g:[Lc/e/a/b/g/f/Z;

    .line 8
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->h:[Lc/e/a/b/g/f/S;

    .line 10
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lc/e/a/b/g/f/aa;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v0, v2

    return v0
.end method
