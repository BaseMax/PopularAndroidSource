.class public abstract Lb/o/a/z;
.super Lb/G/a/a;
.source "FragmentPagerAdapter.java"


# instance fields
.field public final c:Lb/o/a/n;

.field public final d:I

.field public e:Lb/o/a/C;

.field public f:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lb/o/a/n;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lb/o/a/z;-><init>(Lb/o/a/n;I)V

    return-void
.end method

.method public constructor <init>(Lb/o/a/n;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lb/G/a/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/o/a/z;->e:Lb/o/a/C;

    .line 4
    iput-object v0, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p1, p0, Lb/o/a/z;->c:Lb/o/a/n;

    .line 6
    iput p2, p0, Lb/o/a/z;->d:I

    return-void
.end method

.method public static a(IJ)Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/o/a/z;->e:Lb/o/a/C;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/o/a/z;->c:Lb/o/a/n;

    invoke-virtual {v0}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object v0

    iput-object v0, p0, Lb/o/a/z;->e:Lb/o/a/C;

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lb/o/a/z;->d(I)J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lb/o/a/z;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lb/o/a/z;->c:Lb/o/a/n;

    invoke-virtual {v3, v2}, Lb/o/a/n;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    invoke-virtual {p1, v2}, Lb/o/a/C;->a(Landroidx/fragment/app/Fragment;)Lb/o/a/C;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lb/o/a/z;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 8
    iget-object p2, p0, Lb/o/a/z;->e:Lb/o/a/C;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lb/o/a/z;->a(IJ)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, v3, v2, p1}, Lb/o/a/C;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/o/a/C;

    .line 11
    :goto_0
    iget-object p1, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->i(Z)V

    .line 13
    iget p2, p0, Lb/o/a/z;->d:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 14
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2, p2}, Lb/o/a/C;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lb/o/a/C;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->j(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 22
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lb/o/a/C;->c()V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 17
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lb/o/a/z;->c:Lb/o/a/n;

    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p1

    iput-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    .line 19
    :cond_0
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    invoke-virtual {p1, p3}, Lb/o/a/C;->b(Landroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 20
    iget-object p1, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 4
    iget-object p1, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->i(Z)V

    .line 6
    iget p1, p0, Lb/o/a/z;->d:I

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lb/o/a/z;->c:Lb/o/a/n;

    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p1

    iput-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    .line 9
    :cond_0
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    iget-object v0, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Lb/o/a/C;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lb/o/a/C;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->j(Z)V

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->i(Z)V

    .line 12
    iget p1, p0, Lb/o/a/z;->d:I

    if-ne p1, p2, :cond_4

    .line 13
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lb/o/a/z;->c:Lb/o/a/n;

    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p1

    iput-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    .line 15
    :cond_3
    iget-object p1, p0, Lb/o/a/z;->e:Lb/o/a/C;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Lb/o/a/C;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lb/o/a/C;

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->j(Z)V

    .line 17
    :goto_1
    iput-object p3, p0, Lb/o/a/z;->f:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public abstract c(I)Landroidx/fragment/app/Fragment;
.end method

.method public d(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
