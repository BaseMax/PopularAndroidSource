.class public Lcom/koushikdutta/async/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/e;
.implements Lcom/koushikdutta/async/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/f$a;
    }
.end annotation


# static fields
.field static a:Ljavax/net/ssl/SSLContext;

.field static final synthetic t:Z


# instance fields
.field b:Lcom/koushikdutta/async/j;

.field c:Lcom/koushikdutta/async/k;

.field d:Z

.field e:Ljavax/net/ssl/SSLEngine;

.field f:Z

.field g:Ljavax/net/ssl/HostnameVerifier;

.field h:Lcom/koushikdutta/async/f$a;

.field i:[Ljava/security/cert/X509Certificate;

.field j:Lcom/koushikdutta/async/a/g;

.field k:Lcom/koushikdutta/async/a/d;

.field l:[Ljavax/net/ssl/TrustManager;

.field m:Z

.field n:Z

.field o:Ljava/lang/Exception;

.field final p:Lcom/koushikdutta/async/l;

.field final q:Lcom/koushikdutta/async/a/d;

.field r:Lcom/koushikdutta/async/l;

.field s:Lcom/koushikdutta/async/a/a;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-class v0, Lcom/koushikdutta/async/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/koushikdutta/async/f;->t:Z

    .line 61
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    const-string v0, "Default"

    .line 63
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/f;->a:Ljavax/net/ssl/SSLContext;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "TLS"

    .line 67
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sput-object v2, Lcom/koushikdutta/async/f;->a:Ljavax/net/ssl/SSLContext;

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    .line 68
    new-instance v3, Lcom/koushikdutta/async/f$1;

    invoke-direct {v3}, Lcom/koushikdutta/async/f$1;-><init>()V

    aput-object v3, v1, v2

    .line 83
    sget-object v2, Lcom/koushikdutta/async/f;->a:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private constructor <init>(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    .line 164
    new-instance v0, Lcom/koushikdutta/async/f$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/f$5;-><init>(Lcom/koushikdutta/async/f;)V

    iput-object v0, p0, Lcom/koushikdutta/async/f;->q:Lcom/koushikdutta/async/a/d;

    .line 366
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    .line 128
    iput-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    .line 129
    iput-object p6, p0, Lcom/koushikdutta/async/f;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 130
    iput-boolean p7, p0, Lcom/koushikdutta/async/f;->m:Z

    .line 131
    iput-object p5, p0, Lcom/koushikdutta/async/f;->l:[Ljavax/net/ssl/TrustManager;

    .line 132
    iput-object p4, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    .line 134
    iput-object p2, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    .line 135
    iput p3, p0, Lcom/koushikdutta/async/f;->u:I

    .line 136
    iget-object p2, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p2, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 137
    new-instance p2, Lcom/koushikdutta/async/k;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/q;)V

    iput-object p2, p0, Lcom/koushikdutta/async/f;->c:Lcom/koushikdutta/async/k;

    .line 138
    iget-object p1, p0, Lcom/koushikdutta/async/f;->c:Lcom/koushikdutta/async/k;

    new-instance p2, Lcom/koushikdutta/async/f$3;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/f$3;-><init>(Lcom/koushikdutta/async/f;)V

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/k;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 149
    iget-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    new-instance p2, Lcom/koushikdutta/async/f$4;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/f$4;-><init>(Lcom/koushikdutta/async/f;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 161
    iget-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    iget-object p2, p0, Lcom/koushikdutta/async/f;->q:Lcom/koushikdutta/async/a/d;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method private static a(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    .line 360
    div-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x2000

    :cond_0
    return p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/f;Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/f;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/f;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method static a(Lcom/koushikdutta/async/l;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 246
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    return-void

    .line 251
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/koushikdutta/async/f;->h:Lcom/koushikdutta/async/f$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 426
    iput-object v1, p0, Lcom/koushikdutta/async/f;->h:Lcom/koushikdutta/async/f$a;

    .line 427
    iget-object v2, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    new-instance v3, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v3}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 428
    iget-object v2, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v2}, Lcom/koushikdutta/async/j;->end()V

    .line 430
    iget-object v2, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 431
    iget-object v2, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v2}, Lcom/koushikdutta/async/j;->close()V

    .line 432
    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/f$a;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/f;->getEndCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 10

    .line 270
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/f;->write(Lcom/koushikdutta/async/l;)V

    .line 279
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 280
    iget-object p1, p0, Lcom/koushikdutta/async/f;->q:Lcom/koushikdutta/async/a/d;

    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/koushikdutta/async/a/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 284
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/f;->f:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_c

    .line 285
    :cond_3
    iget-boolean p1, p0, Lcom/koushikdutta/async/f;->m:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 286
    iget-object p1, p0, Lcom/koushikdutta/async/f;->l:[Ljavax/net/ssl/TrustManager;

    if-nez p1, :cond_4

    .line 288
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 289
    invoke-virtual {p1, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 290
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 294
    :cond_4
    array-length v2, p1

    const/4 v3, 0x0

    move-object v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v6, p1, v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/koushikdutta/async/d; {:try_start_0 .. :try_end_0} :catch_2

    .line 296
    :try_start_1
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .line 297
    iget-object v7, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    check-cast v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lcom/koushikdutta/async/f;->i:[Ljava/security/cert/X509Certificate;

    .line 298
    iget-object v7, p0, Lcom/koushikdutta/async/f;->i:[Ljava/security/cert/X509Certificate;

    const-string v8, "SSL"

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 300
    iget-object v6, p0, Lcom/koushikdutta/async/f;->g:Ljavax/net/ssl/HostnameVerifier;

    if-nez v6, :cond_5

    .line 301
    new-instance v6, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v6}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 302
    iget-object v7, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    iget-object v8, p0, Lcom/koushikdutta/async/f;->i:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/koushikdutta/async/f;->i:[Ljava/security/cert/X509Certificate;

    aget-object v9, v9, v3

    invoke-static {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_5
    iget-object v6, p0, Lcom/koushikdutta/async/f;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v7, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    iget-object v8, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 306
    :cond_6
    new-instance v5, Ljavax/net/ssl/SSLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hostname <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "> has been denied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/koushikdutta/async/d; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    :cond_8
    :goto_3
    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/f;->f:Z

    if-nez v3, :cond_b

    .line 322
    new-instance p1, Lcom/koushikdutta/async/d;

    invoke-direct {p1, v5}, Lcom/koushikdutta/async/d;-><init>(Ljava/lang/Throwable;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    .line 324
    invoke-virtual {p1}, Lcom/koushikdutta/async/d;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 325
    :cond_9
    throw p1

    .line 329
    :cond_a
    iput-boolean v0, p0, Lcom/koushikdutta/async/f;->f:Z

    .line 331
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/koushikdutta/async/f;->h:Lcom/koushikdutta/async/f$a;

    invoke-interface {p1, v1, p0}, Lcom/koushikdutta/async/f$a;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V

    .line 332
    iput-object v1, p0, Lcom/koushikdutta/async/f;->h:Lcom/koushikdutta/async/f$a;

    .line 334
    iget-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 337
    invoke-virtual {p0}, Lcom/koushikdutta/async/f;->getServer()Lcom/koushikdutta/async/h;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/f$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/f$6;-><init>(Lcom/koushikdutta/async/f;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0}, Lcom/koushikdutta/async/f;->onDataAvailable()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/koushikdutta/async/d; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    return-void

    :catch_2
    move-exception p1

    .line 354
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    return-void

    :catch_3
    move-exception p1

    .line 351
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    return-void

    :catch_4
    move-exception p1

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static getDefaultSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 93
    sget-object v0, Lcom/koushikdutta/async/f;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public static handshake(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/f$a;)V
    .locals 10

    move-object/from16 v0, p7

    .line 101
    new-instance v9, Lcom/koushikdutta/async/f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/koushikdutta/async/f;-><init>(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 102
    iput-object v0, v9, Lcom/koushikdutta/async/f;->h:Lcom/koushikdutta/async/f$a;

    .line 103
    new-instance v1, Lcom/koushikdutta/async/f$2;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/f$2;-><init>(Lcom/koushikdutta/async/f$a;)V

    move-object v0, p0

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 113
    :try_start_0
    iget-object v0, v9, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 114
    iget-object v0, v9, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/koushikdutta/async/f;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 116
    invoke-direct {v9, v0}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->end()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getClosedCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/koushikdutta/async/f;->k:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/n;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/koushikdutta/async/f;->s:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/koushikdutta/async/f;->i:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/koushikdutta/async/f;->u:I

    return v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/j;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 235
    iget-boolean v0, p0, Lcom/koushikdutta/async/f;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/f;->s:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/koushikdutta/async/f;->o:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->resume()V

    .line 495
    invoke-virtual {p0}, Lcom/koushikdutta/async/f;->onDataAvailable()V

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/j;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/koushikdutta/async/f;->k:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/koushikdutta/async/f;->s:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 6

    .line 369
    iget-boolean v0, p0, Lcom/koushikdutta/async/f;->w:Z

    if-eqz v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/f;->c:Lcom/koushikdutta/async/k;

    invoke-virtual {v0}, Lcom/koushikdutta/async/k;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/koushikdutta/async/f;->w:Z

    .line 376
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/f;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 381
    :cond_2
    iget-boolean v3, p0, Lcom/koushikdutta/async/f;->f:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v3

    if-eqz v3, :cond_9

    .line 383
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v3

    .line 385
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 386
    iget-object v5, p0, Lcom/koushikdutta/async/f;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 387
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 389
    iget-object v4, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 390
    sget-boolean v4, Lcom/koushikdutta/async/f;->t:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    invoke-virtual {v4}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 391
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    invoke-virtual {v4}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v4

    if-lez v4, :cond_6

    .line 392
    iget-object v4, p0, Lcom/koushikdutta/async/f;->c:Lcom/koushikdutta/async/k;

    iget-object v5, p0, Lcom/koushikdutta/async/f;->r:Lcom/koushikdutta/async/l;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/k;->write(Lcom/koushikdutta/async/l;)V

    .line 393
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_7

    mul-int/lit8 v0, v0, 0x2

    .line 396
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, -0x1

    goto :goto_2

    .line 400
    :cond_7
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/f;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/f;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 405
    :goto_1
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/f;->a(Ljava/lang/Exception;)V

    .line 408
    :goto_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v4

    if-ne v3, v4, :cond_8

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/koushikdutta/async/f;->c:Lcom/koushikdutta/async/k;

    invoke-virtual {v3}, Lcom/koushikdutta/async/k;->remaining()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_9
    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/koushikdutta/async/f;->w:Z

    .line 410
    invoke-static {v0}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void
.end method
