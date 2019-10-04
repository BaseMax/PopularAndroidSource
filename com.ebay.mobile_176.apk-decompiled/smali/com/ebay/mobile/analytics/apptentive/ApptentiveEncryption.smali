.class public Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;
.super Ljava/lang/Object;
.source "ApptentiveEncryption.java"

# interfaces
.implements Lcom/apptentive/android/sdk/Encryption;


# static fields
.field private static final ENCRYPTION_KEY_BYTES:[B

.field private static final TOKEN_ENCRYPTION_KEY:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private context:Landroid/content/Context;

.field private cryptUtilsFactory:Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    .line 17
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->ENCRYPTION_KEY_BYTES:[B

    .line 20
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->ENCRYPTION_KEY_BYTES:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->TOKEN_ENCRYPTION_KEY:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
    .end array-data
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->cryptUtilsFactory:Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    .line 28
    iput-object p2, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->cryptUtilsFactory:Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    sget-object v2, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->TOKEN_ENCRYPTION_KEY:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->context:Landroid/content/Context;

    const-string v5, "EMBEDDED_IV"

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ebay/nautilus/kernel/crypto/EncryptUtil;->decrypt(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;[BLjavax/crypto/spec/SecretKeySpec;Landroid/content/Context;ZLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->cryptUtilsFactory:Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    sget-object v2, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->TOKEN_ENCRYPTION_KEY:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->context:Landroid/content/Context;

    const-string v5, "EMBEDDED_IV"

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ebay/nautilus/kernel/crypto/EncryptUtil;->encrypt(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;[BLjavax/crypto/spec/SecretKeySpec;Landroid/content/Context;ZLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->cryptUtilsFactory:Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    const-string v1, "EMBEDDED_IV"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;->getOrCreate(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/crypto/CryptUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/crypto/CryptUtils;->dispatchSetup(Ljava/lang/Runnable;)V

    return-void
.end method
