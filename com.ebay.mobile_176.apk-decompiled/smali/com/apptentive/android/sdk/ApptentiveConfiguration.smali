.class public Lcom/apptentive/android/sdk/ApptentiveConfiguration;
.super Ljava/lang/Object;
.source "ApptentiveConfiguration.java"


# instance fields
.field private final apptentiveKey:Ljava/lang/String;

.field private final apptentiveSignature:Ljava/lang/String;

.field private baseURL:Ljava/lang/String;

.field private encryption:Lcom/apptentive/android/sdk/Encryption;

.field private logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

.field private shouldEncryptStorage:Z

.field private shouldSanitizeLogMessages:Z

.field private troubleshootingModeEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->apptentiveKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->apptentiveSignature:Ljava/lang/String;

    .line 35
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldEncryptStorage:Z

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldSanitizeLogMessages:Z

    .line 38
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->troubleshootingModeEnabled:Z

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Apptentive signature is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Apptentive key is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getApptentiveKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->apptentiveKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApptentiveSignature()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->apptentiveSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->baseURL:Ljava/lang/String;

    return-object v0
.end method

.method getEncryption()Lcom/apptentive/android/sdk/Encryption;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-object v0
.end method

.method public getLogLevel()Lcom/apptentive/android/sdk/ApptentiveLog$Level;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    return-object v0
.end method

.method public isTroubleshootingModeEnabled()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->troubleshootingModeEnabled:Z

    return v0
.end method

.method public setBaseURL(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveConfiguration;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->baseURL:Ljava/lang/String;

    return-object p0
.end method

.method public setEncryption(Lcom/apptentive/android/sdk/Encryption;)V
    .locals 0
    .param p1    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-void
.end method

.method public setLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Lcom/apptentive/android/sdk/ApptentiveConfiguration;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    return-object p0
.end method

.method public setShouldEncryptStorage(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldEncryptStorage:Z

    return-void
.end method

.method public setShouldSanitizeLogMessages(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldSanitizeLogMessages:Z

    return-void
.end method

.method public setTroubleshootingModeEnabled(Z)Lcom/apptentive/android/sdk/ApptentiveConfiguration;
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->troubleshootingModeEnabled:Z

    return-object p0
.end method

.method public shouldEncryptStorage()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldEncryptStorage:Z

    return v0
.end method

.method public shouldSanitizeLogMessages()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->shouldSanitizeLogMessages:Z

    return v0
.end method
