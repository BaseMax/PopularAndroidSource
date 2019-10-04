.class public Lf/a/a/g/a/q;
.super Ljava/lang/Object;
.source "AddressPopupPresenter.java"

# interfaces
.implements Lf/a/a/g/a/o;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/a/a/g/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/g/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lf/a/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Lf/a/a/g/a/a;

    invoke-direct {v0}, Lf/a/a/g/a/a;-><init>()V

    iput-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    .line 2
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lf/a/a/g/a/p;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lf/a/a/g/a/a;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    invoke-interface {v0}, Lf/a/a/g/a/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/c/a;->a(Landroid/content/Context;)Lf/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/a/c/a;->b(Lf/a/a/g/a/a;)V

    .line 8
    iget-object p1, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/g/a/p;

    iget-object v0, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Lf/a/a/g/a/p;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/g/a/a;Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/a/a/g/a/p;

    invoke-interface {p2, p1}, Lf/a/a/g/a/p;->a(Lf/a/a/g/a/a;)V

    :cond_0
    return-void
.end method

.method public a(Lf/a/a/g/a/p;)V
    .locals 1

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {v0, p1}, Lf/a/a/g/a/a;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/g/a/p;

    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {v0}, Lf/a/a/g/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {v0}, Lf/a/a/g/a/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lf/a/a/g/a/p;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    invoke-interface {v0}, Lf/a/a/g/a/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/c/a;->a(Landroid/content/Context;)Lf/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/a/c/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    iget-object v1, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lf/a/a/g/a/p;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Lf/a/a/g/a/a;)V
    .locals 2

    .line 8
    iput-object p1, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    .line 9
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/g/a/p;

    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {v0}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf/a/a/g/a/p;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {v0, p1}, Lf/a/a/g/a/a;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/a/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-virtual {p0, p1}, Lf/a/a/g/a/q;->c(Lf/a/a/g/a/a;)V

    .line 7
    iget-object p1, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/g/a/p;

    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-interface {p1, v0}, Lf/a/a/g/a/p;->a(Lf/a/a/g/a/a;)V

    :cond_0
    return-void
.end method

.method public c()Lf/a/a/g/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    return-object v0
.end method

.method public final c(Lf/a/a/g/a/a;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lf/a/a/g/a/a;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    invoke-interface {v0}, Lf/a/a/g/a/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/c/a;->a(Landroid/content/Context;)Lf/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/a/c/a;->a(Lf/a/a/g/a/a;)V

    .line 4
    iget-object p1, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    iget-object v0, p0, Lf/a/a/g/a/q;->c:Lf/a/a/g/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/a/p;

    invoke-interface {v0}, Lf/a/a/g/a/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/c/a;->a(Landroid/content/Context;)Lf/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/a/c/a;->c(Lf/a/a/g/a/a;)V

    .line 6
    iget-object v0, p0, Lf/a/a/g/a/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/g/a/a;

    .line 7
    invoke-virtual {v1}, Lf/a/a/g/a/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lf/a/a/g/a/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/g/a/a;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lf/a/a/g/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/g/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/q;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
