.class public Lb/b/f/a/A;
.super Lb/b/f/a/k;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public B:Lb/b/f/a/k;

.field public C:Lb/b/f/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/b/f/a/k;Lb/b/f/a/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/b/f/a/k;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    .line 3
    iput-object p3, p0, Lb/b/f/a/A;->C:Lb/b/f/a/o;

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/a/k$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->a(Lb/b/f/a/k$a;)V

    return-void
.end method

.method public a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lb/b/f/a/k;->a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    .line 3
    invoke-virtual {v0, p1, p2}, Lb/b/f/a/k;->a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Lb/b/f/a/o;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->a(Lb/b/f/a/o;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/f/a/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->b(Lb/b/f/a/o;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->C:Lb/b/f/a/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/f/a/o;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/b/f/a/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->C:Lb/b/f/a/o;

    return-object v0
.end method

.method public m()Lb/b/f/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->m()Lb/b/f/a/k;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->o()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->p()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->q()Z

    move-result v0

    return v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lb/b/f/a/k;->e(I)Lb/b/f/a/k;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/b/f/a/k;->a(Landroid/graphics/drawable/Drawable;)Lb/b/f/a/k;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lb/b/f/a/k;->f(I)Lb/b/f/a/k;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/b/f/a/k;->a(Ljava/lang/CharSequence;)Lb/b/f/a/k;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/b/f/a/k;->a(Landroid/view/View;)Lb/b/f/a/k;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/f/a/A;->C:Lb/b/f/a/o;

    invoke-virtual {v0, p1}, Lb/b/f/a/o;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->C:Lb/b/f/a/o;

    invoke-virtual {v0, p1}, Lb/b/f/a/o;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->setQwertyMode(Z)V

    return-void
.end method

.method public t()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/A;->B:Lb/b/f/a/k;

    return-object v0
.end method
