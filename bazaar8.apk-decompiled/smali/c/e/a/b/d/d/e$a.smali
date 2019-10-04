.class public final Lc/e/a/b/d/d/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lb/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/d<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
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

.field public d:I

.field public e:Landroid/view/View;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lc/e/a/b/i/a;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/b/d/d/e$a;->d:I

    .line 3
    sget-object v0, Lc/e/a/b/i/a;->a:Lc/e/a/b/i/a;

    iput-object v0, p0, Lc/e/a/b/d/d/e$a;->h:Lc/e/a/b/i/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lc/e/a/b/d/d/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/e$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lc/e/a/b/d/d/e$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lc/e/a/b/d/d/e$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/Collection;)Lc/e/a/b/d/d/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lc/e/a/b/d/d/e$a;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/d/e$a;->b:Lb/f/d;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lb/f/d;

    invoke-direct {v0}, Lb/f/d;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/d/e$a;->b:Lb/f/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/d/e$a;->b:Lb/f/d;

    invoke-virtual {v0, p1}, Lb/f/d;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lc/e/a/b/d/d/e;
    .locals 11

    .line 6
    new-instance v10, Lc/e/a/b/d/d/e;

    iget-object v1, p0, Lc/e/a/b/d/d/e$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lc/e/a/b/d/d/e$a;->b:Lb/f/d;

    iget-object v3, p0, Lc/e/a/b/d/d/e$a;->c:Ljava/util/Map;

    iget v4, p0, Lc/e/a/b/d/d/e$a;->d:I

    iget-object v5, p0, Lc/e/a/b/d/d/e$a;->e:Landroid/view/View;

    iget-object v6, p0, Lc/e/a/b/d/d/e$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lc/e/a/b/d/d/e$a;->g:Ljava/lang/String;

    iget-object v8, p0, Lc/e/a/b/d/d/e$a;->h:Lc/e/a/b/i/a;

    iget-boolean v9, p0, Lc/e/a/b/d/d/e$a;->i:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lc/e/a/b/d/d/e;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/i/a;Z)V

    return-object v10
.end method

.method public final b(Ljava/lang/String;)Lc/e/a/b/d/d/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/e$a;->f:Ljava/lang/String;

    return-object p0
.end method
