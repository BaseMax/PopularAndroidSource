.class public Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;
.super Ljava/lang/Object;
.source "AdyenThreeDs2Client.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdyenChallengeParameters"
.end annotation


# instance fields
.field public acsReferenceNumber:Ljava/lang/String;

.field public acsSignedContent:Ljava/lang/String;

.field public acsTransID:Ljava/lang/String;

.field public acsURL:Ljava/lang/String;

.field public messageVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

.field public threeDSServerTransID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
