.class Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity$1;
.super Ljava/lang/Object;
.source "PudoSelectLogisticsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity$1;->this$0:Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity$1;->this$0:Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->finish()V

    return-void
.end method
