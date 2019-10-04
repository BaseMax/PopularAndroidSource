.class Lcom/ebay/mobile/activities/UserDetailActivity$2;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/UserDetailActivity;->handleAddMessageError(Lcom/ebay/common/content/EbaySimpleNetLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$pictureUrls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->val$body:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->val$pictureUrls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 894
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 896
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->val$body:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 898
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p2, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->val$body:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity$2;->val$pictureUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/ebay/mobile/activities/UserDetailActivity;->askQuestion(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
