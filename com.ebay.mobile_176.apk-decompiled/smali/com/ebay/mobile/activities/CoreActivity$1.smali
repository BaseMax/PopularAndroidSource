.class Lcom/ebay/mobile/activities/CoreActivity$1;
.super Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;
.source "CoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/CoreActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$1;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity$MessageHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected showMessageAsBar(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$1;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->showMessageAsBar(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z

    move-result p1

    return p1
.end method
