.class public final Lc/e/a/b/g/f/S;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/S;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile c:[Lc/e/a/b/g/f/S;


# instance fields
.field public d:Ljava/lang/Integer;

.field public e:[Lc/e/a/b/g/f/X;

.field public f:[Lc/e/a/b/g/f/T;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/X;->d()[Lc/e/a/b/g/f/X;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    .line 4
    invoke-static {}, Lc/e/a/b/g/f/T;->d()[Lc/e/a/b/g/f/T;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    .line 5
    iput-object v0, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method

.method public static d()[Lc/e/a/b/g/f/S;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/g/f/S;->c:[Lc/e/a/b/g/f/S;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/e/a/b/g/f/Vc;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/e/a/b/g/f/S;->c:[Lc/e/a/b/g/f/S;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lc/e/a/b/g/f/S;

    sput-object v1, Lc/e/a/b/g/f/S;->c:[Lc/e/a/b/g/f/S;

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
    sget-object v0, Lc/e/a/b/g/f/S;->c:[Lc/e/a/b/g/f/S;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 16
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 17
    iget-object v1, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v4, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 21
    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    .line 22
    invoke-static {v5, v4}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 23
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 24
    :goto_1
    iget-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 25
    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v4, 0x3

    .line 26
    invoke-static {v4, v1}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v3, 0x4

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 30
    :cond_6
    iget-object v1, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/4 v3, 0x5

    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 34
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 38
    iget-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 39
    new-array v0, v0, [Lc/e/a/b/g/f/T;

    if-eqz v1, :cond_5

    .line 40
    iget-object v3, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 42
    new-instance v2, Lc/e/a/b/g/f/T;

    invoke-direct {v2}, Lc/e/a/b/g/f/T;-><init>()V

    aput-object v2, v0, v1

    .line 43
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 44
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    :cond_6
    new-instance v2, Lc/e/a/b/g/f/T;

    invoke-direct {v2}, Lc/e/a/b/g/f/T;-><init>()V

    aput-object v2, v0, v1

    .line 46
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 47
    iput-object v0, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    goto :goto_0

    .line 48
    :cond_7
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 50
    new-array v0, v0, [Lc/e/a/b/g/f/X;

    if-eqz v1, :cond_9

    .line 51
    iget-object v3, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    .line 53
    new-instance v2, Lc/e/a/b/g/f/X;

    invoke-direct {v2}, Lc/e/a/b/g/f/X;-><init>()V

    aput-object v2, v0, v1

    .line 54
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 55
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_a
    new-instance v2, Lc/e/a/b/g/f/X;

    invoke-direct {v2}, Lc/e/a/b/g/f/X;-><init>()V

    aput-object v2, v0, v1

    .line 57
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 58
    iput-object v0, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    goto/16 :goto_0

    .line 59
    :cond_b
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->e()I

    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->b(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p1, v3, v2}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 8
    :goto_1
    iget-object v0, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 9
    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 10
    invoke-virtual {p1, v2, v0}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 15
    :cond_6
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
    instance-of v1, p1, Lc/e/a/b/g/f/S;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/S;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    iget-object v3, p1, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    iget-object v3, p1, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 9
    iget-object v1, p1, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 10
    :cond_6
    iget-object v3, p1, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 11
    :cond_7
    iget-object v1, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 12
    iget-object v1, p1, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    return v2

    .line 13
    :cond_8
    iget-object v3, p1, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 14
    :cond_9
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 15
    :cond_a
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16
    :cond_b
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lc/e/a/b/g/f/S;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/S;->d:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/S;->e:[Lc/e/a/b/g/f/X;

    .line 4
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/S;->f:[Lc/e/a/b/g/f/T;

    .line 6
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/S;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lc/e/a/b/g/f/S;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
