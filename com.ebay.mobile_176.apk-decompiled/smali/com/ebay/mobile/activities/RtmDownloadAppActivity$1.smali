.class Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;
.super Ljava/lang/Object;
.source "RtmDownloadAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->finish()V

    return-void
.end method
