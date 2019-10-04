.class Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;
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

    .line 83
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "http://market.android.com"

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {v1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->finish()V

    return-void
.end method
