.class public Lj/I;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lj/i$a;
.implements Lj/U;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/I$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final c:Lj/u;

.field public final d:Ljava/net/Proxy;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/q;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lj/z$a;

.field public final j:Ljava/net/ProxySelector;

.field public final k:Lj/t;

.field public final l:Lj/f;

.field public final m:Lj/a/a/j;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;

.field public final p:Lj/a/i/c;

.field public final q:Ljavax/net/ssl/HostnameVerifier;

.field public final r:Lj/k;

.field public final s:Lj/c;

.field public final t:Lj/c;

.field public final u:Lj/p;

.field public final v:Lj/w;

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lj/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lj/I;->a:Ljava/util/List;

    .line 2
    new-array v0, v0, [Lj/q;

    sget-object v1, Lj/q;->d:Lj/q;

    aput-object v1, v0, v3

    sget-object v1, Lj/q;->f:Lj/q;

    aput-object v1, v0, v4

    invoke-static {v0}, Lj/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj/I;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lj/H;

    invoke-direct {v0}, Lj/H;-><init>()V

    sput-object v0, Lj/a/a;->a:Lj/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lj/I$a;

    invoke-direct {v0}, Lj/I$a;-><init>()V

    invoke-direct {p0, v0}, Lj/I;-><init>(Lj/I$a;)V

    return-void
.end method

.method public constructor <init>(Lj/I$a;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lj/I$a;->a:Lj/u;

    iput-object v0, p0, Lj/I;->c:Lj/u;

    .line 4
    iget-object v0, p1, Lj/I$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lj/I;->d:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lj/I$a;->c:Ljava/util/List;

    iput-object v0, p0, Lj/I;->e:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lj/I$a;->d:Ljava/util/List;

    iput-object v0, p0, Lj/I;->f:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lj/I$a;->e:Ljava/util/List;

    invoke-static {v0}, Lj/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lj/I;->g:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lj/I$a;->f:Ljava/util/List;

    invoke-static {v0}, Lj/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lj/I;->h:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lj/I$a;->g:Lj/z$a;

    iput-object v0, p0, Lj/I;->i:Lj/z$a;

    .line 10
    iget-object v0, p1, Lj/I$a;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lj/I;->j:Ljava/net/ProxySelector;

    .line 11
    iget-object v0, p1, Lj/I$a;->i:Lj/t;

    iput-object v0, p0, Lj/I;->k:Lj/t;

    .line 12
    iget-object v0, p1, Lj/I$a;->j:Lj/f;

    iput-object v0, p0, Lj/I;->l:Lj/f;

    .line 13
    iget-object v0, p1, Lj/I$a;->k:Lj/a/a/j;

    iput-object v0, p0, Lj/I;->m:Lj/a/a/j;

    .line 14
    iget-object v0, p1, Lj/I$a;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lj/I;->n:Ljavax/net/SocketFactory;

    .line 15
    iget-object v0, p0, Lj/I;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/q;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v3}, Lj/q;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p1, Lj/I$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lj/a/e;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lj/I;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lj/I;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    invoke-static {v0}, Lj/a/i/c;->a(Ljavax/net/ssl/X509TrustManager;)Lj/a/i/c;

    move-result-object v0

    iput-object v0, p0, Lj/I;->p:Lj/a/i/c;

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p1, Lj/I$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lj/I;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    iget-object v0, p1, Lj/I$a;->n:Lj/a/i/c;

    iput-object v0, p0, Lj/I;->p:Lj/a/i/c;

    .line 23
    :goto_2
    iget-object v0, p0, Lj/I;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 24
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v0

    iget-object v1, p0, Lj/I;->o:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lj/a/g/f;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 25
    :cond_5
    iget-object v0, p1, Lj/I$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lj/I;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    iget-object v0, p1, Lj/I$a;->p:Lj/k;

    iget-object v1, p0, Lj/I;->p:Lj/a/i/c;

    invoke-virtual {v0, v1}, Lj/k;->a(Lj/a/i/c;)Lj/k;

    move-result-object v0

    iput-object v0, p0, Lj/I;->r:Lj/k;

    .line 27
    iget-object v0, p1, Lj/I$a;->q:Lj/c;

    iput-object v0, p0, Lj/I;->s:Lj/c;

    .line 28
    iget-object v0, p1, Lj/I$a;->r:Lj/c;

    iput-object v0, p0, Lj/I;->t:Lj/c;

    .line 29
    iget-object v0, p1, Lj/I$a;->s:Lj/p;

    iput-object v0, p0, Lj/I;->u:Lj/p;

    .line 30
    iget-object v0, p1, Lj/I$a;->t:Lj/w;

    iput-object v0, p0, Lj/I;->v:Lj/w;

    .line 31
    iget-boolean v0, p1, Lj/I$a;->u:Z

    iput-boolean v0, p0, Lj/I;->w:Z

    .line 32
    iget-boolean v0, p1, Lj/I$a;->v:Z

    iput-boolean v0, p0, Lj/I;->x:Z

    .line 33
    iget-boolean v0, p1, Lj/I$a;->w:Z

    iput-boolean v0, p0, Lj/I;->y:Z

    .line 34
    iget v0, p1, Lj/I$a;->x:I

    iput v0, p0, Lj/I;->z:I

    .line 35
    iget v0, p1, Lj/I$a;->y:I

    iput v0, p0, Lj/I;->A:I

    .line 36
    iget v0, p1, Lj/I$a;->z:I

    iput v0, p0, Lj/I;->B:I

    .line 37
    iget v0, p1, Lj/I$a;->A:I

    iput v0, p0, Lj/I;->C:I

    .line 38
    iget p1, p1, Lj/I$a;->B:I

    iput p1, p0, Lj/I;->D:I

    .line 39
    iget-object p1, p0, Lj/I;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    iget-object p1, p0, Lj/I;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/I;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/I;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lj/a/g/f;->d()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p0}, Lj/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lj/I;->B:I

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/I;->y:Z

    return v0
.end method

.method public C()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->n:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lj/I;->C:I

    return v0
.end method

.method public a()Lj/c;
    .locals 1

    .line 5
    iget-object v0, p0, Lj/I;->t:Lj/c;

    return-object v0
.end method

.method public a(Lj/L;)Lj/i;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lj/K;->a(Lj/I;Lj/L;Z)Lj/K;

    move-result-object p1

    return-object p1
.end method

.method public b()Lj/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->l:Lj/f;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lj/I;->z:I

    return v0
.end method

.method public d()Lj/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->r:Lj/k;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lj/I;->A:I

    return v0
.end method

.method public f()Lj/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->u:Lj/p;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/I;->f:Ljava/util/List;

    return-object v0
.end method

.method public h()Lj/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->k:Lj/t;

    return-object v0
.end method

.method public i()Lj/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->c:Lj/u;

    return-object v0
.end method

.method public j()Lj/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->v:Lj/w;

    return-object v0
.end method

.method public k()Lj/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->i:Lj/z$a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/I;->x:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/I;->w:Z

    return v0
.end method

.method public r()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/I;->g:Ljava/util/List;

    return-object v0
.end method

.method public t()Lj/a/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->l:Lj/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj/f;->a:Lj/a/a/j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/I;->m:Lj/a/a/j;

    :goto_0
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj/E;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/I;->h:Ljava/util/List;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lj/I;->D:I

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/I;->e:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public y()Lj/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->s:Lj/c;

    return-object v0
.end method

.method public z()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/I;->j:Ljava/net/ProxySelector;

    return-object v0
.end method
