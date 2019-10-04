.class Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ViewFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ViewFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFeedbackTabAdapter"
.end annotation


# instance fields
.field public EXTRA_POSITION:Ljava/lang/String;

.field private asBuyer:Ljava/lang/CharSequence;

.field private asSeller:Ljava/lang/CharSequence;

.field private tabs:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/ebay/mobile/activities/ViewFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ViewFeedbackActivity;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->this$0:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    .line 245
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "TabsAdaptor.position"

    .line 241
    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->EXTRA_POSITION:Ljava/lang/String;

    .line 247
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120278

    .line 248
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->asSeller:Ljava/lang/CharSequence;

    const p2, 0x7f120277

    .line 249
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->asBuyer:Ljava/lang/CharSequence;

    const/4 p1, 0x2

    .line 251
    new-array p1, p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    .line 252
    iget-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->asSeller:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 253
    iget-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->asBuyer:Ljava/lang/CharSequence;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-ltz p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->this$0:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->EXTRA_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    new-instance p1, Lcom/ebay/mobile/activities/FeedbackFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/activities/FeedbackFragment;-><init>()V

    .line 265
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;->tabs:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
