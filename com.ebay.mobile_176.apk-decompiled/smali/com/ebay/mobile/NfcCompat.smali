.class public Lcom/ebay/mobile/NfcCompat;
.super Ljava/lang/Object;
.source "NfcCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;
    }
.end annotation


# static fields
.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "eBayNfc"

    const-string v2, "NFC logging"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBeamPushEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "NFC hardware not available on this device."

    .line 29
    invoke-static {p0}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    return v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "NFC system setting is disabled."

    .line 36
    invoke-static {p0}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    return v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Android Beam system setting is disabled."

    .line 44
    invoke-static {p0}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    const-string p0, "NFC push is enabled"

    .line 54
    invoke-static {p0}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 50
    sget-object v1, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Error during NFC detection"

    invoke-virtual {v1, v2, p0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic lambda$setNdefPushMessageCallback$0(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1

    const-string p1, "CreateNdefMessageCallback invoked"

    .line 80
    invoke-static {p1}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    .line 81
    invoke-interface {p0}, Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;->getBeamPushUrl()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    sget-object p0, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "An NFC URL is not available to send."

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending NFC URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p0

    .line 90
    new-instance p1, Landroid/nfc/NdefMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    invoke-direct {p1, p0, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object p1
.end method

.method static synthetic lambda$setOnNdefPushCompleteCallback$1(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;Landroid/nfc/NfcEvent;)V
    .locals 0

    const-string p1, "OnNdefPushCompleteCallback invoked"

    .line 106
    invoke-static {p1}, Lcom/ebay/mobile/NfcCompat;->logDebug(Ljava/lang/String;)V

    .line 107
    invoke-interface {p0}, Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;->onBeamPushComplete()V

    return-void
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 1

    .line 118
    sget-object v0, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerForBeamPush(Landroid/app/Activity;Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 66
    invoke-static {p0}, Lcom/ebay/mobile/NfcCompat;->isBeamPushEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/ebay/mobile/NfcCompat;->setNdefPushMessageCallback(Landroid/app/Activity;Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V

    .line 70
    invoke-static {p0, p1}, Lcom/ebay/mobile/NfcCompat;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static setNdefPushMessageCallback(Landroid/app/Activity;Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V
    .locals 2

    .line 77
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/ebay/mobile/-$$Lambda$NfcCompat$Qme-b67vMXc9fE1XmqaWUpYkF3E;

    invoke-direct {v1, p1}, Lcom/ebay/mobile/-$$Lambda$NfcCompat$Qme-b67vMXc9fE1XmqaWUpYkF3E;-><init>(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, p1}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    sget-object p1, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Error while setting setNdefPushMessageCallback."

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static setOnNdefPushCompleteCallback(Landroid/app/Activity;Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V
    .locals 2

    .line 103
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/ebay/mobile/-$$Lambda$NfcCompat$vPvEATgQczZ7-wYOgvdKafsqwrQ;

    invoke-direct {v1, p1}, Lcom/ebay/mobile/-$$Lambda$NfcCompat$vPvEATgQczZ7-wYOgvdKafsqwrQ;-><init>(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, p1}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    sget-object p1, Lcom/ebay/mobile/NfcCompat;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Error while setting setOnNdefPushCompleteCallback."

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
