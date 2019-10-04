.class public Lcab/snapp/mapmodule/units/map/MapView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/mapmodule/units/map/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field private b:Lcab/snapp/mapmodule/units/map/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getChildFrameContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/mapmodule/units/map/MapView;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    sget v0, Lcab/snapp/mapmodule/b$a;->view_map_container_frame:I

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/units/map/MapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcab/snapp/mapmodule/units/map/MapView;->a:Landroid/widget/FrameLayout;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 17
    check-cast p1, Lcab/snapp/mapmodule/units/map/b;

    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/units/map/MapView;->setPresenter(Lcab/snapp/mapmodule/units/map/b;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/mapmodule/units/map/b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/mapmodule/units/map/MapView;->b:Lcab/snapp/mapmodule/units/map/b;

    return-void
.end method
