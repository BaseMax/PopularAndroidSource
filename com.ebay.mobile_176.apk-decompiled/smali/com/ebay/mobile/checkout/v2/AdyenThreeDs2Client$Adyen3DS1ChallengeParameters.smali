.class public Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;
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
    name = "Adyen3DS1ChallengeParameters"
.end annotation


# instance fields
.field public IssuerUrl:Ljava/lang/String;

.field public MD:Ljava/lang/String;

.field public PaReq:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;


# direct methods
.method protected constructor <init>(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;->this$0:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
