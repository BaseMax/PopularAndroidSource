.class public Lc/b/a/d/q;
.super Landroidx/fragment/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/d/q$a;
    }
.end annotation


# instance fields
.field public final Y:Lc/b/a/d/a;

.field public final Z:Lc/b/a/d/o;

.field public final aa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/b/a/d/q;",
            ">;"
        }
    .end annotation
.end field

.field public ba:Lc/b/a/d/q;

.field public ca:Lc/b/a/n;

.field public da:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/d/a;

    invoke-direct {v0}, Lc/b/a/d/a;-><init>()V

    invoke-direct {p0, v0}, Lc/b/a/d/q;-><init>(Lc/b/a/d/a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/d/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/d/q$a;

    invoke-direct {v0, p0}, Lc/b/a/d/q$a;-><init>(Lc/b/a/d/q;)V

    iput-object v0, p0, Lc/b/a/d/q;->Z:Lc/b/a/d/o;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/b/a/d/q;->aa:Ljava/util/Set;

    .line 5
    iput-object p1, p0, Lc/b/a/d/q;->Y:Lc/b/a/d/a;

    return-void
.end method


# virtual methods
.method public La()Lc/b/a/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/q;->Y:Lc/b/a/d/a;

    return-object v0
.end method

.method public final Ma()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/d/q;->da:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method public Na()Lc/b/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/q;->ca:Lc/b/a/n;

    return-object v0
.end method

.method public Oa()Lc/b/a/d/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/q;->Z:Lc/b/a/d/o;

    return-object v0
.end method

.method public final Pa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/q;->ba:Lc/b/a/d/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lc/b/a/d/q;->b(Lc/b/a/d/q;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/b/a/d/q;->ba:Lc/b/a/d/q;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 7
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/q;->a(Lb/o/a/i;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 10
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lb/o/a/i;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/b/a/d/q;->Pa()V

    .line 4
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/e;->i()Lc/b/a/d/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/d/n;->b(Lb/o/a/i;)Lc/b/a/d/q;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/d/q;->ba:Lc/b/a/d/q;

    .line 5
    iget-object p1, p0, Lc/b/a/d/q;->ba:Lc/b/a/d/q;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lc/b/a/d/q;->ba:Lc/b/a/d/q;

    invoke-virtual {p1, p0}, Lc/b/a/d/q;->a(Lc/b/a/d/q;)V

    :cond_0
    return-void
.end method

.method public final a(Lc/b/a/d/q;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/d/q;->aa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/b/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/d/q;->ca:Lc/b/a/n;

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lc/b/a/d/q;->da:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/q;->a(Lb/o/a/i;)V

    :cond_0
    return-void
.end method

.method public final b(Lc/b/a/d/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/q;->aa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public oa()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->oa()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/q;->Y:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->a()V

    .line 3
    invoke-virtual {p0}, Lc/b/a/d/q;->Pa()V

    return-void
.end method

.method public ra()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ra()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/b/a/d/q;->da:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p0}, Lc/b/a/d/q;->Pa()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/b/a/d/q;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ua()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ua()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/q;->Y:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->b()V

    return-void
.end method

.method public va()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->va()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/q;->Y:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->c()V

    return-void
.end method
