.class public Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ApptentiveViewPagerAdapter.java"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private tabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tabTitles:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tabTitles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tags:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentTag(I)Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    .line 32
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tabTitles:Ljava/util/List;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tags:Ljava/util/List;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public removeItem(I)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
