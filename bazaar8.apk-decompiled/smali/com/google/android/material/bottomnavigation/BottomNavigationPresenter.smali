.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lb/b/f/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field public a:Lb/b/f/a/k;

.field public b:Lc/e/a/c/e/d;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:I

    return-void
.end method

.method public a(Landroid/content/Context;Lb/b/f/a/k;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lb/b/f/a/k;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lb/b/f/a/k;

    invoke-virtual {p1, p2}, Lc/e/a/c/e/d;->a(Lb/b/f/a/k;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 8
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->a:I

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/c/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    invoke-virtual {p1}, Lc/e/a/c/e/d;->a()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    invoke-virtual {p1}, Lc/e/a/c/e/d;->c()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lc/e/a/c/e/d;

    invoke-virtual {v1}, Lc/e/a/c/e/d;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->a:I

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    return-void
.end method

.method public b(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:I

    return v0
.end method
