.class public Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/over_the_map_empty/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/over_the_map_empty/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 12
    check-cast p1, Lcab/snapp/passenger/units/over_the_map_empty/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;->setPresenter(Lcab/snapp/passenger/units/over_the_map_empty/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/over_the_map_empty/c;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;->a:Lcab/snapp/passenger/units/over_the_map_empty/c;

    return-void
.end method
