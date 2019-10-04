.class public final Lc/e/a/b/g/f/Bc;
.super Lc/e/a/b/g/f/zc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/zc<",
        "Lc/e/a/b/g/f/Ac;",
        "Lc/e/a/b/g/f/Ac;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/zc;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lc/e/a/b/g/f/Ac;)V
    .locals 0

    .line 1
    check-cast p0, Lc/e/a/b/g/f/nb;

    iput-object p1, p0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-static {}, Lc/e/a/b/g/f/Ac;->d()Lc/e/a/b/g/f/Ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/b/g/f/nb;

    iget-object p1, p1, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 3
    invoke-virtual {p1}, Lc/e/a/b/g/f/Ac;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;II)V
    .locals 0

    .line 12
    check-cast p1, Lc/e/a/b/g/f/Ac;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    .line 14
    check-cast p1, Lc/e/a/b/g/f/Ac;

    shl-int/lit8 p2, p2, 0x3

    .line 15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 0

    .line 10
    check-cast p1, Lc/e/a/b/g/f/Ac;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 11
    invoke-virtual {p1, p2, p3}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lc/e/a/b/g/f/Ac;

    check-cast p3, Lc/e/a/b/g/f/Ac;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 9
    invoke-virtual {p1, p2, p3}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/b/g/f/Ac;

    .line 5
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/Ac;->b(Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lc/e/a/b/g/f/Ac;

    invoke-static {p1, p2}, Lc/e/a/b/g/f/Bc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Ac;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/gc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lc/e/a/b/g/f/Ac;

    .line 6
    invoke-virtual {p1}, Lc/e/a/b/g/f/Ac;->a()V

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    .line 7
    check-cast p1, Lc/e/a/b/g/f/Ac;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 8
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/b/g/f/Ac;

    .line 2
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/Ac;->a(Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p2, Lc/e/a/b/g/f/Ac;

    .line 4
    invoke-static {p1, p2}, Lc/e/a/b/g/f/Bc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Ac;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/b/g/f/Ac;

    .line 2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Ac;->b()I

    move-result p1

    return p1
.end method

.method public final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    check-cast p1, Lc/e/a/b/g/f/Ac;

    check-cast p2, Lc/e/a/b/g/f/Ac;

    .line 4
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/e/a/b/g/f/Ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lc/e/a/b/g/f/Ac;->a(Lc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ac;)Lc/e/a/b/g/f/Ac;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/b/g/f/nb;

    iget-object p1, p1, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    return-object p1
.end method

.method public final synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lc/e/a/b/g/f/nb;

    iget-object v0, v0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/Ac;->d()Lc/e/a/b/g/f/Ac;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lc/e/a/b/g/f/Bc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Ac;)V

    :cond_0
    return-object v0
.end method

.method public final synthetic f(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/b/g/f/Ac;

    .line 2
    invoke-virtual {p1}, Lc/e/a/b/g/f/Ac;->e()I

    move-result p1

    return p1
.end method
