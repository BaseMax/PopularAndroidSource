.class public Lcom/ebay/mobile/activities/RtmThemedSearchActivity;
.super Lcom/ebay/mobile/activities/CoreListActivity;
.source "RtmThemedSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/RtmThemedSearchActivity$ThemeListAdapter;,
        Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;
    }
.end annotation


# instance fields
.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;

.field private itemSearchURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxCountPerPage:I

.field private searchDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreListActivity;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->searchDescriptions:Ljava/util/ArrayList;

    .line 50
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->itemSearchURLs:Ljava/util/ArrayList;

    .line 52
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    const/16 v0, 0x19

    .line 53
    iput v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->maxCountPerPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/RtmThemedSearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->searchDescriptions:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "RtmThemedSearch"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 58
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.TEXT"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "android.intent.extra.TITLE"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->title:Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "searchDescriptions"

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->searchDescriptions:Ljava/util/ArrayList;

    const-string v1, "itemSearchURLs"

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->itemSearchURLs:Ljava/util/ArrayList;

    :cond_0
    const p1, 0x7f0d03d1

    .line 72
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    new-instance p1, Lcom/ebay/android/widget/ExpandingImageView;

    invoke-direct {p1, p0}, Lcom/ebay/android/widget/ExpandingImageView;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/ebay/android/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 86
    new-instance p1, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$ThemeListAdapter;

    const v4, 0x7f0d0115

    const v5, 0x1020014

    iget-object v6, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->searchDescriptions:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$ThemeListAdapter;-><init>(Lcom/ebay/mobile/activities/RtmThemedSearchActivity;Landroid/content/Context;IILjava/util/List;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 671
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    .line 125
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 131
    invoke-super/range {v1 .. v6}, Lcom/ebay/mobile/activities/CoreListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 133
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->itemSearchURLs:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->itemSearchURLs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    .line 136
    new-instance p1, Lcom/ebay/common/model/search/SavedSearch;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    const/16 p4, 0x19

    invoke-direct {p1, p2, p4}, Lcom/ebay/common/model/search/SavedSearch;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;I)V

    .line 137
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->title:Ljava/lang/String;

    iput-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->name:Ljava/lang/String;

    .line 138
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->itemSearchURLs:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    .line 139
    new-instance p2, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;-><init>(Lcom/ebay/common/model/search/SavedSearch;Lcom/ebay/nautilus/domain/app/Authentication;)V

    .line 140
    iget-object p1, p1, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-static {p0, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->createFromParameters(Landroid/content/Context;Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "RtmThemedSearchActivity"

    const-string p2, "Selected position outside range of backing array. This indicates bad response and/or parsing."

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 653
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 659
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onResume()V

    .line 95
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 677
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 101
    check-cast p1, Landroid/widget/ListView;

    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 104
    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 106
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 107
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 109
    check-cast p1, Landroid/widget/TextView;

    .line 110
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 647
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 665
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onStop()V

    return-void
.end method

.method protected recoverFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method
