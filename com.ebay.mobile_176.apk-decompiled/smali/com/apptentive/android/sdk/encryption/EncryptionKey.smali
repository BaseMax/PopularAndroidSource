.class public Lcom/apptentive/android/sdk/encryption/EncryptionKey;
.super Ljava/lang/Object;
.source "EncryptionKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/encryption/EncryptionKey$Transformation;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/apptentive/android/sdk/encryption/EncryptionKey;


# instance fields
.field private final key:Ljava/security/Key;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/encryption/EncryptionKey;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->NULL:Lcom/apptentive/android/sdk/encryption/EncryptionKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->key:Ljava/security/Key;

    .line 23
    iput-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->transformation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p2}, Lcom/apptentive/android/sdk/encryption/EncryptionKey$Transformation;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/encryption/EncryptionKey$Transformation;

    move-result-object v0

    iget-object v0, v0, Lcom/apptentive/android/sdk/encryption/EncryptionKey$Transformation;->algorithm:Ljava/lang/String;

    .line 43
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->key:Ljava/security/Key;

    .line 44
    iput-object p2, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->transformation:Ljava/lang/String;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Hex key is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/Key;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/security/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->key:Ljava/security/Key;

    .line 35
    iput-object p2, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->transformation:Ljava/lang/String;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cipher transformation is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getSecretKey()Ljava/security/Key;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->key:Ljava/security/Key;

    return-object v0
.end method

.method getTransformation()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method isNull()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionKey;->key:Ljava/security/Key;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
