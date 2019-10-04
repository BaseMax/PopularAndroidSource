.class final Lcom/koushikdutta/async/http/b/e$d;
.super Lcom/koushikdutta/async/http/b/e$e;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic i:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b/e$g;J)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$d;->i:Lcom/koushikdutta/async/http/b/e;

    .line 724
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/b/e$e;-><init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b/e$g;J)V

    return-void
.end method


# virtual methods
.method public final getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
