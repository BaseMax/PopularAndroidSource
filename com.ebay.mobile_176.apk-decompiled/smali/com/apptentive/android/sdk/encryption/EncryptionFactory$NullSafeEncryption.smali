.class Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption;
.super Ljava/lang/Object;
.source "EncryptionFactory.java"

# interfaces
.implements Lcom/apptentive/android/sdk/Encryption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/encryption/EncryptionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullSafeEncryption"
.end annotation


# instance fields
.field private final target:Lcom/apptentive/android/sdk/Encryption;


# direct methods
.method private constructor <init>(Lcom/apptentive/android/sdk/Encryption;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption;->target:Lcom/apptentive/android/sdk/Encryption;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/Encryption;Lcom/apptentive/android/sdk/encryption/EncryptionFactory$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption;-><init>(Lcom/apptentive/android/sdk/Encryption;)V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption;->target:Lcom/apptentive/android/sdk/Encryption;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/Encryption;->decrypt([B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption;->target:Lcom/apptentive/android/sdk/Encryption;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method
