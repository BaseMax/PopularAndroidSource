.class public abstract Lcom/facebook/crypto/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final nativeLibrary:Lcom/facebook/crypto/e/b;

.field public final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Lcom/facebook/crypto/e/b;Ljava/security/SecureRandom;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/crypto/b;->nativeLibrary:Lcom/facebook/crypto/e/b;

    .line 26
    iput-object p2, p0, Lcom/facebook/crypto/b;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public createCrypto128Bits(Lcom/facebook/crypto/b/a;)Lcom/facebook/crypto/c;
    .locals 3

    .line 42
    new-instance v0, Lcom/facebook/crypto/c;

    iget-object v1, p0, Lcom/facebook/crypto/b;->nativeLibrary:Lcom/facebook/crypto/e/b;

    sget-object v2, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/crypto/c;-><init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/CryptoConfig;)V

    return-object v0
.end method

.method public createCrypto256Bits(Lcom/facebook/crypto/b/a;)Lcom/facebook/crypto/c;
    .locals 3

    .line 46
    new-instance v0, Lcom/facebook/crypto/c;

    iget-object v1, p0, Lcom/facebook/crypto/b;->nativeLibrary:Lcom/facebook/crypto/e/b;

    sget-object v2, Lcom/facebook/crypto/CryptoConfig;->KEY_256:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/crypto/c;-><init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/CryptoConfig;)V

    return-object v0
.end method

.method public createDefaultCrypto(Lcom/facebook/crypto/b/a;)Lcom/facebook/crypto/c;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/crypto/b;->createCrypto256Bits(Lcom/facebook/crypto/b/a;)Lcom/facebook/crypto/c;

    move-result-object p1

    return-object p1
.end method

.method public createPasswordBasedKeyDerivation()Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
    .locals 3

    .line 50
    new-instance v0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;

    iget-object v1, p0, Lcom/facebook/crypto/b;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lcom/facebook/crypto/b;->nativeLibrary:Lcom/facebook/crypto/e/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;-><init>(Ljava/security/SecureRandom;Lcom/facebook/crypto/e/b;)V

    return-object v0
.end method
