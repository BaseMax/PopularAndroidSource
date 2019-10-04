.class public Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

.field imageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0121
    .end annotation
.end field

.field titleView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0122
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;)Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA"

    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    new-instance p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;

    invoke-direct {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0042

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "DATA"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    .line 65
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    if-eqz p2, :cond_2

    .line 1076
    invoke-virtual {p2}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->getImage()I

    move-result p2

    if-eqz p2, :cond_1

    .line 1078
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->getImage()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1081
    :cond_1
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->getTitle()I

    move-result p2

    if-eqz p2, :cond_2

    .line 1083
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->titleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->a:Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->getTitle()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p1
.end method
