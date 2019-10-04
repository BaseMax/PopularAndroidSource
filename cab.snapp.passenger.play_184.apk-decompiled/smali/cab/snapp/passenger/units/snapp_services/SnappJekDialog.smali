.class public Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/units/snapp_services/a;

.field contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0124
    .end annotation
.end field

.field indicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ea
    .end annotation
.end field

.field nextBtn:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0125
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0123
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ONBOARDING_SNAPP_GROUP:Ljava/lang/String;

    const-string v3, "[skip]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->dismiss()V

    return-void
.end method

.method public goToNext()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0125
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;->getCurrentItem()I

    move-result v0

    .line 67
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->b:Lcab/snapp/passenger/units/snapp_services/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/snapp_services/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 70
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;->setCurrentItem(I)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ONBOARDING_SNAPP_GROUP:Ljava/lang/String;

    const-string v3, "[gotIt]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0041

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->indicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    invoke-virtual {v0, p1}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setCurrentPage(I)V

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->b:Lcab/snapp/passenger/units/snapp_services/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_services/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->nextBtn:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f120164

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->nextBtn:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f1200b0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V

    .line 1151
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    new-instance p2, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    const v0, 0x7f120126

    const v1, 0x7f080110

    invoke-direct {p2, v0, v1}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance p2, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    const v0, 0x7f120127

    const v1, 0x7f080111

    invoke-direct {p2, v0, v1}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance p2, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    const v0, 0x7f120128

    const v1, 0x7f080112

    invoke-direct {p2, v0, v1}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p2, Lcab/snapp/passenger/units/snapp_services/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcab/snapp/passenger/units/snapp_services/a;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->b:Lcab/snapp/passenger/units/snapp_services/a;

    .line 104
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->indicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setPageIndicators(I)V

    .line 107
    iget-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->b:Lcab/snapp/passenger/units/snapp_services/a;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 108
    iget-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    invoke-virtual {p1, p0}, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
