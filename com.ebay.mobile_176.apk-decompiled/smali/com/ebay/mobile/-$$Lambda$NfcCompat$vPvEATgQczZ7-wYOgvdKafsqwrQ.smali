.class public final synthetic Lcom/ebay/mobile/-$$Lambda$NfcCompat$vPvEATgQczZ7-wYOgvdKafsqwrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/-$$Lambda$NfcCompat$vPvEATgQczZ7-wYOgvdKafsqwrQ;->f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;

    return-void
.end method


# virtual methods
.method public final onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/-$$Lambda$NfcCompat$vPvEATgQczZ7-wYOgvdKafsqwrQ;->f$0:Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;

    invoke-static {v0, p1}, Lcom/ebay/mobile/NfcCompat;->lambda$setOnNdefPushCompleteCallback$1(Lcom/ebay/mobile/NfcCompat$OnBeamPushListener;Landroid/nfc/NfcEvent;)V

    return-void
.end method
