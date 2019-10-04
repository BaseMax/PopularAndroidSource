.class final Lcab/snapp/passenger/units/tour/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/tour/e;->addOnPageListenerForLastPageChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcab/snapp/passenger/units/tour/e;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/tour/e;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 223
    iput-boolean p1, p0, Lcab/snapp/passenger/units/tour/e$1;->a:Z

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    :goto_0
    iput-boolean p1, p0, Lcab/snapp/passenger/units/tour/e$1;->a:Z

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/tour/e;->a(Lcab/snapp/passenger/units/tour/e;I)I

    move-result v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/tour/e;->b(Lcab/snapp/passenger/units/tour/e;I)V

    .line 237
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/tour/e;->a(Lcab/snapp/passenger/units/tour/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/tour/e$1;->a:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/tour/e;->b(Lcab/snapp/passenger/units/tour/e;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/tour/e;->a(Lcab/snapp/passenger/units/tour/e;II)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/tour/e;->c(Lcab/snapp/passenger/units/tour/e;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    invoke-virtual {v0, p1}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setCurrentPage(I)V

    .line 242
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/tour/e;->lastPageIsSelected(Z)V

    goto :goto_2

    .line 248
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/tour/e;->lastPageIsSelected(Z)V

    .line 251
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/tour/e;->c(Lcab/snapp/passenger/units/tour/e;I)I

    .line 252
    iget-object p1, p0, Lcab/snapp/passenger/units/tour/e$1;->b:Lcab/snapp/passenger/units/tour/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/tour/e;->d(Lcab/snapp/passenger/units/tour/e;)Z

    return-void
.end method
