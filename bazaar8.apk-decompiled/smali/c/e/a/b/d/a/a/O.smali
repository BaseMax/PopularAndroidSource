.class public final Lc/e/a/b/d/a/a/O;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/b/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/h<",
            "Ljava/util/Map<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/O;->a:Lb/f/b;

    invoke-virtual {v0}, Lb/f/b;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lc/e/a/b/d/a/a/N;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/N<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/O;->a:Lb/f/b;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/O;->b:Lb/f/b;

    invoke-virtual {v0, p1, p3}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p1, p0, Lc/e/a/b/d/a/a/O;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lc/e/a/b/d/a/a/O;->d:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->B()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iput-boolean p3, p0, Lc/e/a/b/d/a/a/O;->e:Z

    .line 7
    :cond_0
    iget p1, p0, Lc/e/a/b/d/a/a/O;->d:I

    if-nez p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lc/e/a/b/d/a/a/O;->e:Z

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object p2, p0, Lc/e/a/b/d/a/a/O;->a:Lb/f/b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Lb/f/b;)V

    .line 10
    iget-object p2, p0, Lc/e/a/b/d/a/a/O;->c:Lc/e/a/b/j/h;

    invoke-virtual {p2, p1}, Lc/e/a/b/j/h;->a(Ljava/lang/Exception;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lc/e/a/b/d/a/a/O;->c:Lc/e/a/b/j/h;

    iget-object p2, p0, Lc/e/a/b/d/a/a/O;->b:Lb/f/b;

    invoke-virtual {p1, p2}, Lc/e/a/b/j/h;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
