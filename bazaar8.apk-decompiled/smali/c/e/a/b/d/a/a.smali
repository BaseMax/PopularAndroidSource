.class public final Lc/e/a/b/d/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/a/a$h;,
        Lc/e/a/b/d/a/a$f;,
        Lc/e/a/b/d/a/a$b;,
        Lc/e/a/b/d/a/a$j;,
        Lc/e/a/b/d/a/a$g;,
        Lc/e/a/b/d/a/a$c;,
        Lc/e/a/b/d/a/a$d;,
        Lc/e/a/b/d/a/a$i;,
        Lc/e/a/b/d/a/a$a;,
        Lc/e/a/b/d/a/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/e/a/b/d/a/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/b/d/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/b/d/a/a$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$i<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/b/d/a/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lc/e/a/b/d/a/a$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$j<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/a/b/d/a/a$a;Lc/e/a/b/d/a/a$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lc/e/a/b/d/a/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lc/e/a/b/d/a/a$a<",
            "TC;TO;>;",
            "Lc/e/a/b/d/a/a$g<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    .line 2
    invoke-static {p2, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    .line 3
    invoke-static {p3, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lc/e/a/b/d/a/a;->e:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lc/e/a/b/d/a/a;->a:Lc/e/a/b/d/a/a$a;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lc/e/a/b/d/a/a;->b:Lc/e/a/b/d/a/a$i;

    .line 7
    iput-object p3, p0, Lc/e/a/b/d/a/a;->c:Lc/e/a/b/d/a/a$g;

    .line 8
    iput-object p1, p0, Lc/e/a/b/d/a/a;->d:Lc/e/a/b/d/a/a$j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lc/e/a/b/d/a/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/d/a/a$a<",
            "*TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a;->a:Lc/e/a/b/d/a/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lc/e/a/b/d/d/r;->b(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a;->a:Lc/e/a/b/d/a/a$a;

    return-object v0
.end method
