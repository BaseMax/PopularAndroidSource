.class Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullEncryption;
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
    name = "NullEncryption"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/encryption/EncryptionFactory$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/apptentive/android/sdk/encryption/EncryptionFactory$NullEncryption;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p1
.end method
