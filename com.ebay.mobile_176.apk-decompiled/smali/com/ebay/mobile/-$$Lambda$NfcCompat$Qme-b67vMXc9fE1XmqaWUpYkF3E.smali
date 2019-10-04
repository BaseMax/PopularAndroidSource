.class public final synthetic Lcom/ebay/mobile/-$$Lambda$NfcCompat$Qme-b67vMXc9fE1XmqaWUpYkF3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/-$$Lambda$NfcCompat$Qme-b67vMXc9fE1XmqaWUpYkF3E;->f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;

    return-void
.end method


# virtual methods
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/-$$Lambda$NfcCompat$Qme-b67vMXc9fE1XmqaWUpYkF3E;->f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;

    invoke-static {v0, p1}, Lcom/ebay/mobile/NfcCompat;->lambda$setNdefPushMessageCallback$0(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object p1

    return-object p1
.end method
