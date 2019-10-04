.class public Lcom/ebay/mobile/activities/ViewFeedbackActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "ViewFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/ViewFeedbackActivity$FeedbackLinkProcessor;,
        Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;,
        Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
    }
.end annotation


# static fields
.field public static final EXTRA_TAB_MODE:Ljava/lang/String; = "feedbackTabMode"

.field public static final NEGATIVE:Ljava/lang/String; = "negative"

.field public static final NEUTRAL:Ljava/lang/String; = "neutral"

.field public static final PARAM_MONTHS:Ljava/lang/String; = "months"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_USER_ID:Ljava/lang/String; = "id"

.field public static final POSITIVE:Ljava/lang/String; = "positive"


# instance fields
.field private months:Ljava/lang/Integer;

.field protected pager:Landroidx/viewpager/widget/ViewPager;

.field private pagerAdapter:Landroidx/fragment/app/FragmentStatePagerAdapter;

.field private signInActivityStarted:Z

.field private startType:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

.field protected userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    .line 91
    sget-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->startType:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-void
.end method


# virtual methods
.method protected getInitialType()Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->startType:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-object v0
.end method

.method protected getMonths()Ljava/lang/Integer;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->months:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViewFeedback"

    return-object v0
.end method

.method public declared-synchronized issueDataRequest(IILcom/ebay/nautilus/domain/data/trading/CommentType;Lcom/ebay/nautilus/domain/data/trading/FeedbackType;)Z
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    :try_start_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->getRunningLoader(I)Lcom/ebay/nautilus/shell/content/FwLoader;

    move-result-object v3

    if-nez v3, :cond_0

    .line 210
    invoke-static {v1}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v6

    .line 211
    new-instance v0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v5

    iget-object v7, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    move-object v4, v0

    move v8, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/trading/CommentType;Lcom/ebay/nautilus/domain/data/trading/FeedbackType;)V

    .line 213
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 217
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x21cb

    .line 99
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d0523

    .line 102
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "sign_in_activity_started"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "type"

    .line 111
    sget-object v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    iget v1, v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->value:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    invoke-static {v0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->getByValue(I)Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->startType:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const-string v0, "months"

    const/4 v1, -0x1

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->months:Ljava/lang/Integer;

    .line 114
    iget-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->months:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->months:Ljava/lang/Integer;

    :cond_2
    const p1, 0x7f0a122e

    .line 117
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 118
    new-instance p1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0, p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$ViewFeedbackTabAdapter;-><init>(Lcom/ebay/mobile/activities/ViewFeedbackActivity;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pagerAdapter:Landroidx/fragment/app/FragmentStatePagerAdapter;

    .line 119
    iget-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pagerAdapter:Landroidx/fragment/app/FragmentStatePagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "feedbackTabMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 125
    iget-object p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    .line 129
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 168
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 173
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 159
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 160
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 161
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sign_in_activity_started"

    .line 153
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->signInActivityStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pagerAdapter:Landroidx/fragment/app/FragmentStatePagerAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/FeedbackFragment;

    if-eqz p1, :cond_0

    .line 190
    check-cast p2, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/FeedbackFragment;->onGetFeedbackComplete(Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;)V

    :cond_0
    return-void
.end method
