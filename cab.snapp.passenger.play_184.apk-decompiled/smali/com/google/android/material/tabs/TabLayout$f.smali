.class public final Lcom/google/android/material/tabs/TabLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field c:I

.field private d:Ljava/lang/Object;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/view/View;

.field public parent:Lcom/google/android/material/tabs/TabLayout;

.field public view:Lcom/google/android/material/tabs/TabLayout$h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1695
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    const/4 v0, 0x0

    .line 1939
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 1940
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    .line 1941
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/Object;

    .line 1942
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Landroid/graphics/drawable/Drawable;

    .line 1943
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/CharSequence;

    .line 1944
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1945
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:I

    .line 1946
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    return-void
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1790
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:I

    return v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isSelected()Z
    .locals 2

    .line 1879
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 1882
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1880
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final select()V
    .locals 2

    .line 1871
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2569
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    return-void

    .line 1872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setContentDescription(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    return-object p1

    .line 1897
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 1913
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Ljava/lang/CharSequence;

    .line 1914
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    return-object p0
.end method

.method public final setCustomView(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1770
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public final setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    .line 1751
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    return-object p0
.end method

.method public final setIcon(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 1831
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    return-object p1

    .line 1829
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 1815
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Landroid/graphics/drawable/Drawable;

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    return-object p0
.end method

.method public final setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 1722
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final setText(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 1866
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    return-object p1

    .line 1864
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->view:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/CharSequence;

    .line 1850
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    return-object p0
.end method
