.class public Lb/o/a/k;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Lb/o/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/a/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/o/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/m<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/o/a/k;->a:Lb/o/a/m;

    return-void
.end method

.method public static a(Lb/o/a/m;)Lb/o/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/m<",
            "*>;)",
            "Lb/o/a/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/o/a/k;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Lb/i/j/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lb/o/a/m;

    invoke-direct {v0, p0}, Lb/o/a/k;-><init>(Lb/o/a/m;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/o/a/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->k()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    instance-of v1, v0, Lb/r/I;

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->a(Landroid/os/Parcelable;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v1, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v1, v0, v0, p1}, Lb/o/a/v;->a(Lb/o/a/m;Lb/o/a/j;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1, p2}, Lb/o/a/v;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->l()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->b(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0, p1}, Lb/o/a/v;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->m()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->o()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->p()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->r()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->s()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->t()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->w()Z

    move-result v0

    return v0
.end method

.method public j()Lb/o/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->C()V

    return-void
.end method

.method public l()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/k;->a:Lb/o/a/m;

    iget-object v0, v0, Lb/o/a/m;->e:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->E()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
