.class public Lf/a/a/g/d/e;
.super Lf/a/a/g/d/a;
.source "ChangeActionCallListener.java"


# instance fields
.field public c:Landroid/view/View;

.field public d:Z


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/a;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/g/d/e;->c:Landroid/view/View;

    .line 3
    iput-boolean p3, p0, Lf/a/a/g/d/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lf/a/a/g/d/e;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Lf/a/a/g/d/a;->a()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/g/d/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    instance-of v0, v0, Lf/a/a/e/C;

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lf/a/a/g/d/a;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/d/e;->c:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lf/a/a/e/l;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method
