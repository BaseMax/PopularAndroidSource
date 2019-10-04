.class public final Lc/e/a/b/d/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/d/e$a;,
        Lc/e/a/b/d/d/e$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/e/a/b/d/a/a<",
            "*>;",
            "Lc/e/a/b/d/d/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Landroid/view/View;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lc/e/a/b/i/a;

.field public final j:Z

.field public k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/i/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lc/e/a/b/d/a/a<",
            "*>;",
            "Lc/e/a/b/d/d/e$b;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/e/a/b/i/a;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/d/e;->a:Landroid/accounts/Account;

    if-nez p2, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc/e/a/b/d/d/e;->b:Ljava/util/Set;

    if-nez p3, :cond_1

    .line 4
    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_1
    iput-object p3, p0, Lc/e/a/b/d/d/e;->d:Ljava/util/Map;

    .line 5
    iput-object p5, p0, Lc/e/a/b/d/d/e;->f:Landroid/view/View;

    .line 6
    iput p4, p0, Lc/e/a/b/d/d/e;->e:I

    .line 7
    iput-object p6, p0, Lc/e/a/b/d/d/e;->g:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lc/e/a/b/d/d/e;->h:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lc/e/a/b/d/d/e;->i:Lc/e/a/b/i/a;

    .line 10
    iput-boolean p9, p0, Lc/e/a/b/d/d/e;->j:Z

    .line 11
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lc/e/a/b/d/d/e;->b:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object p2, p0, Lc/e/a/b/d/d/e;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/e/a/b/d/d/e$b;

    .line 13
    iget-object p3, p3, Lc/e/a/b/d/d/e$b;->a:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/d/d/e;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->a:Landroid/accounts/Account;

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/d/e;->k:Ljava/lang/Integer;

    return-void
.end method

.method public final b()Landroid/accounts/Account;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final h()Lc/e/a/b/i/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/e;->i:Lc/e/a/b/i/a;

    return-object v0
.end method
