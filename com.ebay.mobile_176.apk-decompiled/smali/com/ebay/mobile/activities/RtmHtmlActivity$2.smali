.class Lcom/ebay/mobile/activities/RtmHtmlActivity$2;
.super Ljava/lang/Object;
.source "RtmHtmlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/RtmHtmlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$2;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->finish()V

    return-void
.end method
