.class public final Lcom/ebay/common/view/EbayErrorHandler$DefaultUserNotLoggedInCallback;
.super Ljava/lang/Object;
.source "EbayErrorHandler.java"

# interfaces
.implements Lcom/ebay/common/view/EbayErrorHandler$UserNotLoggedInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/EbayErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultUserNotLoggedInCallback"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p1, p0, Lcom/ebay/common/view/EbayErrorHandler$DefaultUserNotLoggedInCallback;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onUserNotLoggedIn()V
    .locals 1

    .line 684
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/ebay/common/view/EbayErrorHandler$DefaultUserNotLoggedInCallback;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
