.class public Lc/b/a/c/b/b/k;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lc/b/a/i/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/i/a/d$a<",
        "Lc/b/a/c/b/b/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/b/l;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/b/k;->a:Lc/b/a/c/b/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/b/l$a;
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lc/b/a/c/b/b/l$a;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/c/b/b/l$a;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/b/k;->a()Lc/b/a/c/b/b/l$a;

    move-result-object v0

    return-object v0
.end method
