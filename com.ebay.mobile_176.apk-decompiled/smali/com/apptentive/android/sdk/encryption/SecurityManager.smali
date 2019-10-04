.class public final Lcom/apptentive/android/sdk/encryption/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static generateUniqueKeyAlias()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apptentive-key-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryption(Landroid/content/Context;Lcom/apptentive/android/sdk/Encryption;Z)Lcom/apptentive/android/sdk/Encryption;
    .locals 3
    .param p1    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionInitializationException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 49
    invoke-static {p0}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->hasEncryptionInfo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Using an external encryption for secure storage"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {p1}, Lcom/apptentive/android/sdk/encryption/EncryptionFactory;->wrapNullSafe(Lcom/apptentive/android/sdk/Encryption;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "The client already has its storage encrypted and can\'t transit to a custom encryption implementation."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_1
    invoke-static {p0, p2}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->resolveKeyInfo(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Secret key info: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p2, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->resolveMasterKey(Landroid/content/Context;Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;)Lcom/apptentive/android/sdk/encryption/EncryptionKey;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/apptentive/android/sdk/encryption/EncryptionFactory;->createEncryption(Lcom/apptentive/android/sdk/encryption/EncryptionKey;)Lcom/apptentive/android/sdk/Encryption;

    move-result-object p0

    return-object p0

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.apptentive.sdk.security"

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static hasEncryptionInfo(Landroid/content/Context;)Z
    .locals 3

    .line 73
    invoke-static {p0}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "alias"

    const/4 v1, 0x0

    .line 74
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    const/4 v2, 0x0

    .line 75
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 76
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static resolveKeyInfo(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;
    .locals 4

    .line 82
    invoke-static {p0}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "alias"

    const/4 v1, 0x0

    .line 84
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    const/4 v2, 0x0

    .line 85
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_2

    .line 87
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/encryption/SecurityManager;->generateUniqueKeyAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 89
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    const/16 v1, 0x11

    .line 93
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "alias"

    .line 94
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "version_code"

    .line 95
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "Generated new key info"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_2
    new-instance p0, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;

    invoke-direct {p0, v0, v1}, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method private static resolveMasterKey(Landroid/content/Context;Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;)Lcom/apptentive/android/sdk/encryption/EncryptionKey;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionInitializationException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget v0, p1, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->versionCode:I

    invoke-static {v0}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolverFactory;->createKeyResolver(I)Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver;

    move-result-object v0

    .line 106
    iget-object v1, p1, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->alias:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/apptentive/android/sdk/encryption/resolvers/KeyResolver;->resolveKey(Landroid/content/Context;Ljava/lang/String;)Lcom/apptentive/android/sdk/encryption/EncryptionKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Lcom/apptentive/android/sdk/encryption/EncryptionInitializationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->alias:Ljava/lang/String;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Exception while resolving secret key for alias \'%s\'. Encryption might not work correctly!"

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/apptentive/android/sdk/encryption/EncryptionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
