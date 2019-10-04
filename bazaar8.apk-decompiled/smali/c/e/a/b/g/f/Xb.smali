.class public final Lc/e/a/b/g/f/Xb;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/hc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/b/g/f/hc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/b/g/f/Sb;

.field public final b:Lc/e/a/b/g/f/zc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/zc<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lc/e/a/b/g/f/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Sb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/g/f/zc<",
            "**>;",
            "Lc/e/a/b/g/f/db<",
            "*>;",
            "Lc/e/a/b/g/f/Sb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    .line 3
    invoke-virtual {p2, p3}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/Sb;)Z

    move-result p1

    iput-boolean p1, p0, Lc/e/a/b/g/f/Xb;->c:Z

    .line 4
    iput-object p2, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    .line 5
    iput-object p3, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Xb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/g/f/zc<",
            "**>;",
            "Lc/e/a/b/g/f/db<",
            "*>;",
            "Lc/e/a/b/g/f/Sb;",
            ")",
            "Lc/e/a/b/g/f/Xb<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Xb;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/g/f/Xb;-><init>(Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Sb;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    invoke-interface {v0}, Lc/e/a/b/g/f/Sb;->c()Lc/e/a/b/g/f/Tb;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/g/f/Tb;->n()Lc/e/a/b/g/f/Sb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/b/g/f/Oc;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/ib;

    .line 11
    invoke-interface {v2}, Lc/e/a/b/g/f/ib;->b()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzik;->zzamu:Lcom/google/android/gms/internal/measurement/zzik;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lc/e/a/b/g/f/ib;->c()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lc/e/a/b/g/f/ib;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    instance-of v3, v1, Lc/e/a/b/g/f/yb;

    if-eqz v3, :cond_0

    .line 13
    invoke-interface {v2}, Lc/e/a/b/g/f/ib;->a()I

    move-result v2

    check-cast v1, Lc/e/a/b/g/f/yb;

    invoke-virtual {v1}, Lc/e/a/b/g/f/yb;->a()Lc/e/a/b/g/f/wb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/g/f/Ab;->a()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v1

    .line 14
    invoke-interface {p2, v2, v1}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v2}, Lc/e/a/b/g/f/ib;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    .line 18
    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;Lc/e/a/b/g/f/cb;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/b/g/f/gc;",
            "Lc/e/a/b/g/f/cb;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    iget-object v1, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    .line 47
    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    invoke-virtual {v1, p1}, Lc/e/a/b/g/f/db;->b(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v3

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->e()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 50
    invoke-virtual {v0, p1, v2}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->getTag()I

    move-result v4

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 52
    iget-object v5, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    ushr-int/lit8 v4, v4, 0x3

    .line 53
    invoke-virtual {v1, p3, v5, v4}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/Sb;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 54
    invoke-virtual {v0, v2, p2}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;)Z

    move-result v4

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v1, p2, v4, p3, v3}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/gc;Ljava/lang/Object;Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/gb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 56
    :cond_3
    :try_start_2
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->n()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move-object v4, v7

    move-object v8, v4

    const/4 v6, 0x0

    .line 57
    :cond_5
    :goto_0
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->e()I

    move-result v9

    if-eq v9, v5, :cond_9

    .line 58
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->getTag()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_6

    .line 59
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->g()I

    move-result v6

    .line 60
    iget-object v4, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    .line 61
    invoke-virtual {v1, p3, v4, v6}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/Sb;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_6
    const/16 v10, 0x1a

    if-ne v9, v10, :cond_8

    if-nez v4, :cond_7

    .line 62
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->k()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v8

    goto :goto_0

    .line 63
    :cond_7
    invoke-virtual {v1, p2, v4, p3, v3}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/gc;Ljava/lang/Object;Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/gb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 64
    :cond_8
    :try_start_3
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->n()Z

    move-result v9

    if-nez v9, :cond_5

    .line 65
    :cond_9
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->getTag()I

    move-result v5

    const/16 v9, 0xc

    if-ne v5, v9, :cond_c

    if-eqz v8, :cond_b

    if-nez v4, :cond_a

    .line 66
    invoke-virtual {v0, v2, v6, v8}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto :goto_1

    .line 67
    :cond_a
    invoke-virtual {v1, v8, v4, p3, v3}, Lc/e/a/b/g/f/db;->a(Lcom/google/android/gms/internal/measurement/zzdp;Ljava/lang/Object;Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/gb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 68
    invoke-virtual {v0, p1, v2}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_c
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->e()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p2

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p2

    .line 70
    invoke-virtual {v0, p1, v2}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/kc;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, p0, Lc/e/a/b/g/f/Xb;->c:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/kc;->a(Lc/e/a/b/g/f/db;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILc/e/a/b/g/f/Ia;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lc/e/a/b/g/f/Ia;",
            ")V"
        }
    .end annotation

    .line 19
    move-object v0, p1

    check-cast v0, Lc/e/a/b/g/f/nb;

    iget-object v1, v0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 20
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 21
    invoke-static {}, Lc/e/a/b/g/f/Ac;->d()Lc/e/a/b/g/f/Ac;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 23
    :cond_0
    check-cast p1, Lc/e/a/b/g/f/nb$c;

    .line 24
    invoke-virtual {p1}, Lc/e/a/b/g/f/nb$c;->q()Lc/e/a/b/g/f/gb;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    .line 25
    invoke-static {p2, p3, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 26
    iget v2, p5, Lc/e/a/b/g/f/Ia;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 27
    iget-object p3, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    iget-object v0, p5, Lc/e/a/b/g/f/Ia;->d:Lc/e/a/b/g/f/cb;

    iget-object v3, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    ushr-int/lit8 v5, v2, 0x3

    .line 28
    invoke-virtual {p3, v0, v3, v5}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/Sb;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lc/e/a/b/g/f/nb$d;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 29
    invoke-static/range {v2 .. v7}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I

    move-result p3

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    .line 31
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 32
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ia;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    .line 33
    invoke-static {p2, v4, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 34
    iget v5, p5, Lc/e/a/b/g/f/Ia;->a:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    .line 35
    invoke-static {p2, v4, p5}, Lc/e/a/b/g/f/Ha;->e([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 36
    iget-object v2, p5, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdp;

    goto :goto_1

    .line 37
    :cond_5
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    .line 38
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 39
    invoke-static {p2, v4, p5}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 40
    iget p3, p5, Lc/e/a/b/g/f/Ia;->a:I

    .line 41
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    iget-object v5, p5, Lc/e/a/b/g/f/Ia;->d:Lc/e/a/b/g/f/cb;

    iget-object v6, p0, Lc/e/a/b/g/f/Xb;->a:Lc/e/a/b/g/f/Sb;

    .line 42
    invoke-virtual {v0, v5, v6, p3}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/Sb;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/nb$d;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    .line 43
    invoke-static {v5, p2, v4, p4, p5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ia;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 44
    invoke-virtual {v1, p3, v2}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 45
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lc/e/a/b/g/f/gb;->d()Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    .line 9
    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/zc;->f(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11
    iget-boolean v1, p0, Lc/e/a/b/g/f/Xb;->c:Z

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v1, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/g/f/gb;->i()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    invoke-virtual {v1, p2}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/e/a/b/g/f/Xb;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p2}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/gb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Xb;->b:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lc/e/a/b/g/f/Xb;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/Xb;->d:Lc/e/a/b/g/f/db;

    invoke-virtual {v1, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lc/e/a/b/g/f/gb;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
