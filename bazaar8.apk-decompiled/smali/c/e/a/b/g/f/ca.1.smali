.class public final Lc/e/a/b/g/f/ca;
.super Lc/e/a/b/g/f/Rc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Rc<",
        "Lc/e/a/b/g/f/ca;",
        ">;"
    }
.end annotation


# instance fields
.field public c:[Lc/e/a/b/g/f/da;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Rc;-><init>()V

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/da;->d()[Lc/e/a/b/g/f/da;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 6
    invoke-super {p0}, Lc/e/a/b/g/f/Rc;->a()I

    move-result v0

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 10
    invoke-static {v3, v2}, Lc/e/a/b/g/f/Qc;->b(ILc/e/a/b/g/f/Wc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
    .locals 4

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, Lc/e/a/b/g/f/Rc;->a(Lc/e/a/b/g/f/Pc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 13
    :cond_1
    invoke-static {p1, v1}, Lc/e/a/b/g/f/Zc;->a(Lc/e/a/b/g/f/Pc;I)I

    move-result v0

    .line 14
    iget-object v1, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 15
    new-array v0, v0, [Lc/e/a/b/g/f/da;

    if-eqz v1, :cond_3

    .line 16
    iget-object v3, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 18
    new-instance v2, Lc/e/a/b/g/f/da;

    invoke-direct {v2}, Lc/e/a/b/g/f/da;-><init>()V

    aput-object v2, v0, v1

    .line 19
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 20
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->c()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_4
    new-instance v2, Lc/e/a/b/g/f/da;

    invoke-direct {v2}, Lc/e/a/b/g/f/da;-><init>()V

    aput-object v2, v0, v1

    .line 22
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/Pc;->a(Lc/e/a/b/g/f/Wc;)V

    .line 23
    iput-object v0, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/Qc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v1}, Lc/e/a/b/g/f/Qc;->a(ILc/e/a/b/g/f/Wc;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
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
    instance-of v1, p1, Lc/e/a/b/g/f/ca;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/ca;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    iget-object v3, p1, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    invoke-static {v1, v3}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/Tc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_4
    :goto_0
    iget-object p1, p1, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lc/e/a/b/g/f/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    .line 3
    invoke-static {v1}, Lc/e/a/b/g/f/Vc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
