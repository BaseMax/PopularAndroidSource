.class public Lc/e/a/b/d/a/c$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lc/e/a/b/d/a/a/i;

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/b/d/a/c$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/c$a$a;->a:Lc/e/a/b/d/a/a/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/e/a/b/d/a/a/a;

    invoke-direct {v0}, Lc/e/a/b/d/a/a/a;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/a/c$a$a;->a:Lc/e/a/b/d/a/a/i;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/c$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/d/a/c$a$a;->b:Landroid/os/Looper;

    .line 5
    :cond_1
    new-instance v0, Lc/e/a/b/d/a/c$a;

    iget-object v1, p0, Lc/e/a/b/d/a/c$a$a;->a:Lc/e/a/b/d/a/a/i;

    iget-object v2, p0, Lc/e/a/b/d/a/c$a$a;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lc/e/a/b/d/a/c$a;-><init>(Lc/e/a/b/d/a/a/i;Landroid/accounts/Account;Landroid/os/Looper;Lc/e/a/b/d/a/i;)V

    return-object v0
.end method
