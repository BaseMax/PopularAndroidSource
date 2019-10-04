.class public final Lc/e/a/b/g/f/U;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/U;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile c:[Lc/e/a/b/g/f/U;


# instance fields
.field public d:Lc/e/a/b/g/f/Y;

.field public e:Lc/e/a/b/g/f/W;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method

.method public static d()[Lc/e/a/b/g/f/U;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/g/f/U;->c:[Lc/e/a/b/g/f/U;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/e/a/b/g/f/Vc;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/e/a/b/g/f/U;->c:[Lc/e/a/b/g/f/U;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lc/e/a/b/g/f/U;

    sput-object v1, Lc/e/a/b/g/f/U;->c:[Lc/e/a/b/g/f/U;

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
    sget-object v0, Lc/e/a/b/g/f/U;->c:[Lc/e/a/b/g/f/U;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 10
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 11
    iget-object v1, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 14
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget-object v1, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    invoke-static {v3}, Lc/e/a/b/g/f/Qc;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 18
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 19
    invoke-static {v2, v1}, Lc/e/a/b/g/f/Qc;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 2

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 21
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 24
    :cond_3
    iget-object v0, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v0, :cond_4

    .line 25
    new-instance v0, Lc/e/a/b/g/f/W;

    invoke-direct {v0}, Lc/e/a/b/g/f/W;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    .line 26
    :cond_4
    iget-object v0, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-nez v0, :cond_6

    .line 28
    new-instance v0, Lc/e/a/b/g/f/Y;

    invoke-direct {v0}, Lc/e/a/b/g/f/Y;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    .line 29
    :cond_6
    iget-object v0, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lc/e/a/b/g/f/Qc;->a(ILjava/lang/String;)V

    .line 9
    :cond_3
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
    instance-of v1, p1, Lc/e/a/b/g/f/U;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/U;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    invoke-virtual {v1, v3}, Lc/e/a/b/g/f/Y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_4
    iget-object v3, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {v1, v3}, Lc/e/a/b/g/f/W;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 10
    iget-object v1, p1, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 11
    :cond_6
    iget-object v3, p1, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 12
    :cond_7
    iget-object v1, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 13
    iget-object v1, p1, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    .line 14
    :cond_8
    iget-object v3, p1, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 15
    :cond_9
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 16
    :cond_a
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17
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
    const-class v0, Lc/e/a/b/g/f/U;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    mul-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lc/e/a/b/g/f/Y;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Lc/e/a/b/g/f/W;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
