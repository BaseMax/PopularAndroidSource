.class public final Le/a/a/a/a/e/g;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static final a(Le/a/a/a/a/e/h;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/a/a/a/e/j;

    invoke-interface {p0}, Le/a/a/a/a/e/h;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3
    invoke-interface {p0}, Le/a/a/a/a/e/h;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le/a/a/a/a/e/j;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4
    new-instance v2, Le/a/a/a/a/e/i;

    invoke-direct {v2, v1, p0}, Le/a/a/a/a/e/i;-><init>(Le/a/a/a/a/e/j;Le/a/a/a/a/e/h;)V

    const/4 p0, 0x1

    .line 5
    new-array p0, p0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object v2, p0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 6
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method
