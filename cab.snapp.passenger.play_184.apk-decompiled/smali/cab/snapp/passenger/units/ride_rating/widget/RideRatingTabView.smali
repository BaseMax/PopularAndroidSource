.class public Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00cb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0432

    .line 81
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0431

    .line 82
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideBadge()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBadge(I)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBadgeBackground(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showBadge()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/widget/RideRatingTabView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
