.class public Lf/a/a/g/d/a/c;
.super Ljava/lang/Object;
.source "ActionHandler.java"

# interfaces
.implements Lf/a/a/a/c/c;
.implements Lf/a/a/g/d/b;


# instance fields
.field public a:Lf/a/a/e/g;

.field public b:Landroid/os/Parcelable;

.field public c:Lf/a/a/g/d/b;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/g/d/a/c;->b:Landroid/os/Parcelable;

    .line 3
    iput-object v0, p0, Lf/a/a/g/d/a/c;->c:Lf/a/a/g/d/b;

    .line 4
    iput-object p1, p0, Lf/a/a/g/d/a/c;->a:Lf/a/a/e/g;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    .line 5
    iget-object v0, p0, Lf/a/a/g/d/a/c;->b:Landroid/os/Parcelable;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "pending"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/d/a/c;->b:Landroid/os/Parcelable;

    const-string v0, "action"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lf/a/a/g/d/b;

    iput-object p1, p0, Lf/a/a/g/d/a/c;->c:Lf/a/a/g/d/b;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lf/a/a/g/d/a/c;->b:Landroid/os/Parcelable;

    return-void
.end method

.method public a(Lf/a/a/g/d/a/b;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/a/c;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lf/a/a/g/d/b;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lf/a/a/g/d/b;

    iput-object v0, p0, Lf/a/a/g/d/a/c;->c:Lf/a/a/g/d/b;

    .line 4
    :cond_1
    iget-object v0, p0, Lf/a/a/g/d/a/c;->a:Lf/a/a/e/g;

    invoke-virtual {p1, v0, p2}, Lf/a/a/g/d/a/b;->a(Lf/a/a/e/g;Landroid/view/View;)V

    return-void
.end method

.method public a(Lf/a/a/e/g;IILandroid/content/Intent;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lf/a/a/g/d/a/c;->c:Lf/a/a/g/d/b;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Lf/a/a/g/d/b;->a(Lf/a/a/e/g;IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/a/c;->b:Landroid/os/Parcelable;

    const-string v1, "pending"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/a/c;->c:Lf/a/a/g/d/b;

    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
