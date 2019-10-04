.class public final Lc/e/a/b/d/a/a/M;
.super Lc/e/a/b/d/a/a/K;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/d/a/a/K<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lc/e/a/b/d/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/g;Lc/e/a/b/j/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/g<",
            "*>;",
            "Lc/e/a/b/j/h<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Lc/e/a/b/d/a/a/K;-><init>(ILc/e/a/b/j/h;)V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/a/a/M;->c:Lc/e/a/b/d/a/a/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lc/e/a/b/d/a/a/m;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lc/e/a/b/d/a/a/c$a;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/e/a/b/d/a/a/c$a;->l()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/M;->c:Lc/e/a/b/d/a/a/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/d/a/a/C;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lc/e/a/b/d/a/a/C;->a:Lc/e/a/b/d/a/a/h;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/h;->b()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lc/e/a/b/d/a/a/c$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/e/a/b/d/a/a/c$a;->l()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/b/d/a/a/M;->c:Lc/e/a/b/d/a/a/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/d/a/a/C;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lc/e/a/b/d/a/a/C;->a:Lc/e/a/b/d/a/a/h;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/h;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lc/e/a/b/d/a/a/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/e/a/b/d/a/a/c$a;->l()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/M;->c:Lc/e/a/b/d/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/C;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lc/e/a/b/d/a/a/C;->b:Lc/e/a/b/d/a/a/l;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/c$a;->f()Lc/e/a/b/d/a/a$f;

    move-result-object p1

    iget-object v2, p0, Lc/e/a/b/d/a/a/K;->b:Lc/e/a/b/j/h;

    invoke-virtual {v1, p1, v2}, Lc/e/a/b/d/a/a/l;->a(Lc/e/a/b/d/a/a$b;Lc/e/a/b/j/h;)V

    .line 3
    iget-object p1, v0, Lc/e/a/b/d/a/a/C;->a:Lc/e/a/b/d/a/a/h;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/h;->a()V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/K;->b:Lc/e/a/b/j/h;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/e/a/b/j/h;->b(Ljava/lang/Object;)Z

    return-void
.end method
