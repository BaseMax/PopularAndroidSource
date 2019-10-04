.class final Lcab/snapp/passenger/units/main/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/d;->onInitialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/main/d;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 705
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/d;->b(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 707
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/d;->w(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 709
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/d;->x(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->handleDrawerClosed()V

    :cond_0
    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 691
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/d;->b(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 693
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/d;->u(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 698
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/d$2;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/d;->v(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->handleDrawerOpened()V

    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
