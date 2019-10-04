.class public Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/EmptyNoHeightPlaceHolderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 15
    check-cast p1, Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/EmptyNoHeightPlaceHolderView;->setPresenter(Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/EmptyNoHeightPlaceHolderView;->a:Lcab/snapp/passenger/units/footer/empty_no_height_place_holder/b;

    return-void
.end method
