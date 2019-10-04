.class public final Lj/I$a;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public a:Lj/u;

.field public b:Ljava/net/Proxy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lj/z$a;

.field public h:Ljava/net/ProxySelector;

.field public i:Lj/t;

.field public j:Lj/f;

.field public k:Lj/a/a/j;

.field public l:Ljavax/net/SocketFactory;

.field public m:Ljavax/net/ssl/SSLSocketFactory;

.field public n:Lj/a/i/c;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lj/k;

.field public q:Lj/c;

.field public r:Lj/c;

.field public s:Lj/p;

.field public t:Lj/w;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/I$a;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/I$a;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lj/u;

    invoke-direct {v0}, Lj/u;-><init>()V

    iput-object v0, p0, Lj/I$a;->a:Lj/u;

    .line 5
    sget-object v0, Lj/I;->a:Ljava/util/List;

    iput-object v0, p0, Lj/I$a;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lj/I;->b:Ljava/util/List;

    iput-object v0, p0, Lj/I$a;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lj/z;->a:Lj/z;

    invoke-static {v0}, Lj/z;->a(Lj/z;)Lj/z$a;

    move-result-object v0

    iput-object v0, p0, Lj/I$a;->g:Lj/z$a;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lj/I$a;->h:Ljava/net/ProxySelector;

    .line 9
    iget-object v0, p0, Lj/I$a;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lj/a/h/a;

    invoke-direct {v0}, Lj/a/h/a;-><init>()V

    iput-object v0, p0, Lj/I$a;->h:Ljava/net/ProxySelector;

    .line 11
    :cond_0
    sget-object v0, Lj/t;->a:Lj/t;

    iput-object v0, p0, Lj/I$a;->i:Lj/t;

    .line 12
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lj/I$a;->l:Ljavax/net/SocketFactory;

    .line 13
    sget-object v0, Lj/a/i/d;->a:Lj/a/i/d;

    iput-object v0, p0, Lj/I$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 14
    sget-object v0, Lj/k;->a:Lj/k;

    iput-object v0, p0, Lj/I$a;->p:Lj/k;

    .line 15
    sget-object v0, Lj/c;->a:Lj/c;

    iput-object v0, p0, Lj/I$a;->q:Lj/c;

    .line 16
    iput-object v0, p0, Lj/I$a;->r:Lj/c;

    .line 17
    new-instance v0, Lj/p;

    invoke-direct {v0}, Lj/p;-><init>()V

    iput-object v0, p0, Lj/I$a;->s:Lj/p;

    .line 18
    sget-object v0, Lj/w;->a:Lj/w;

    iput-object v0, p0, Lj/I$a;->t:Lj/w;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lj/I$a;->u:Z

    .line 20
    iput-boolean v0, p0, Lj/I$a;->v:Z

    .line 21
    iput-boolean v0, p0, Lj/I$a;->w:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lj/I$a;->x:I

    const/16 v1, 0x2710

    .line 23
    iput v1, p0, Lj/I$a;->y:I

    .line 24
    iput v1, p0, Lj/I$a;->z:I

    .line 25
    iput v1, p0, Lj/I$a;->A:I

    .line 26
    iput v0, p0, Lj/I$a;->B:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lj/I$a;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lj/a/e;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lj/I$a;->y:I

    return-object p0
.end method

.method public a(Lj/E;)Lj/I$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lj/I$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lj/c;)Lj/I$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lj/I$a;->r:Lj/c;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lj/f;)Lj/I$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lj/I$a;->j:Lj/f;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lj/I$a;->k:Lj/a/a/j;

    return-object p0
.end method

.method public a()Lj/I;
    .locals 1

    .line 8
    new-instance v0, Lj/I;

    invoke-direct {v0, p0}, Lj/I;-><init>(Lj/I$a;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lj/I$a;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lj/a/e;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lj/I$a;->z:I

    return-object p0
.end method
