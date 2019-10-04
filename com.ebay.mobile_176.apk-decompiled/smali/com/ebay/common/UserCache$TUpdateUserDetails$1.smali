.class Lcom/ebay/common/UserCache$TUpdateUserDetails$1;
.super Ljava/lang/Object;
.source "UserCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/UserCache$TUpdateUserDetails;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/UserCache$TUpdateUserDetails;

.field final synthetic val$profile:Lcom/ebay/common/model/UserDetail;


# direct methods
.method constructor <init>(Lcom/ebay/common/UserCache$TUpdateUserDetails;Lcom/ebay/common/model/UserDetail;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->this$0:Lcom/ebay/common/UserCache$TUpdateUserDetails;

    iput-object p2, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->val$profile:Lcom/ebay/common/model/UserDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->this$0:Lcom/ebay/common/UserCache$TUpdateUserDetails;

    invoke-static {v0}, Lcom/ebay/common/UserCache$TUpdateUserDetails;->access$000(Lcom/ebay/common/UserCache$TUpdateUserDetails;)Lcom/ebay/common/UserCache$Internal;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->val$profile:Lcom/ebay/common/model/UserDetail;

    invoke-virtual {v0, v1}, Lcom/ebay/common/UserCache$Internal;->updateUserDetails(Lcom/ebay/common/model/UserDetail;)V

    .line 409
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->val$profile:Lcom/ebay/common/model/UserDetail;

    iget-object v1, v1, Lcom/ebay/common/model/UserDetail;->payPalAccountStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->setPayPalAccountStatus(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;->val$profile:Lcom/ebay/common/model/UserDetail;

    iget-boolean v1, v1, Lcom/ebay/common/model/UserDetail;->isPpa:Z

    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->setUserIsPpa(Z)V

    return-void
.end method
