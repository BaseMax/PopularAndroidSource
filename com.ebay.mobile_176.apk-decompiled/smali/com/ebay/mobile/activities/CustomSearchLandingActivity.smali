.class public Lcom/ebay/mobile/activities/CustomSearchLandingActivity;
.super Lcom/ebay/mobile/activities/CoreListActivity;
.source "CustomSearchLandingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/ebay/mobile/prelist/PrelistKeywordsSuggestionAdapter$KeywordSuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;
    }
.end annotation


# static fields
.field private static final supportedSearchTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/search/SearchType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentCustomSearchType:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

.field protected emitTracking:Z

.field private isQuerySubmitted:Z

.field private isSuggestionVisible:Z

.field private lastQueryUsed:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private paramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public progress:Landroid/view/View;

.field private searchHint:Ljava/lang/String;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private selectedRefinement:Ljava/lang/String;

.field private suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

.field private suggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/AutoFillSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->MY_GARAGE:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->DEALS:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->supportedSearchTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreListActivity;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isQuerySubmitted:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Landroid/widget/ListView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isSuggestionVisible:Z

    return p1
.end method

.method static synthetic access$302(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isQuerySubmitted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isQuerySubmitted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->showSuggestion(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->selectedRefinement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->selectedRefinement:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Lcom/ebay/nautilus/domain/data/experience/search/SearchType;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->currentCustomSearchType:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->paramMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private hideSuggestions()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public static isSupportedCustomSearchType(Lcom/ebay/nautilus/domain/data/experience/search/SearchType;)Z
    .locals 1

    .line 97
    sget-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->supportedSearchTypes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setupSearchBox()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;-><init>(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 183
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->showSuggestion(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private showSuggestion(Ljava/lang/CharSequence;)V
    .locals 2

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    .line 332
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-virtual {p1}, Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;->clear()V

    .line 336
    new-instance p1, Lcom/ebay/common/model/AutoFillSuggestion;

    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/ebay/common/model/AutoFillSuggestion;-><init>(Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-virtual {p1, v1}, Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;->updateSuggestionList(Ljava/util/List;)V

    .line 340
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-virtual {p1}, Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 343
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Ljava/lang/String;)V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "last_query"

    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "last_query"

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "param_map"

    .line 89
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateSearchType()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->paramMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->MY_GARAGE:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->currentCustomSearchType:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    const v0, 0x7f12053c

    .line 139
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchHint:Ljava/lang/String;

    const v0, 0x7f12053d

    .line 140
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->titleText:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->DEALS:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->currentCustomSearchType:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    const v0, 0x7f1203de

    .line 145
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchHint:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->titleText:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "DealsDetail"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    .line 104
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setToolbarFlags(I)V

    const v0, 0x7f1203de

    .line 105
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setTitle(I)V

    const v0, 0x7f0d022d

    .line 106
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setContentView(I)V

    .line 107
    new-instance v0, Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Lcom/ebay/nautilus/domain/EbayCountry;Lcom/ebay/mobile/prelist/PrelistKeywordsSuggestionAdapter$KeywordSuggestionClickListener;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    .line 108
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionAdapter:Lcom/ebay/mobile/sellsmartbox/SmartboxKeywordSuggestionAdapter;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0cb4

    .line 109
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    .line 111
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->emitTracking:Z

    .line 118
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "last_query"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    const-string v0, "param_map"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->paramMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "suggestion_visibility"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isSuggestionVisible:Z

    const-string/jumbo v0, "suggestion_list"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionList:Ljava/util/ArrayList;

    const-string v0, "last_query"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    const-string/jumbo v0, "tracking"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->emitTracking:Z

    const-string v0, "param_map"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->paramMap:Ljava/util/HashMap;

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->updateSearchType()V

    .line 131
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->titleText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeywordRefinementClicked(Ljava/lang/String;)V
    .locals 2

    .line 222
    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->selectedRefinement:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onKeywordSuggestionClicked(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isQuerySubmitted:Z

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->hideSuggestions()V

    .line 234
    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 236
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 153
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0158

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getAuxiliaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1297

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    iput-object v2, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 163
    iget-object v2, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v3, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v3, 0x7f070366

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 167
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 168
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->setupSearchBox()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onResume()V

    .line 205
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 209
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "suggestion_visibility"

    .line 190
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->isSuggestionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "suggestion_list"

    .line 192
    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->suggestionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string/jumbo v0, "tracking"

    .line 193
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->emitTracking:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "last_query"

    .line 194
    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->lastQueryUsed:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_map"

    .line 195
    iget-object v1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->paramMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 196
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a11fe

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
