.class public final Lcab/snapp/passenger/units/sideMenu/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/a/m$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/sideMenu/SideMenuView;",
        "Lcab/snapp/passenger/units/sideMenu/a;",
        ">;",
        "Lcab/snapp/passenger/a/m$e;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSideMenuAdapter()Lcab/snapp/passenger/a/m;
    .locals 1

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    return-object v0
.end method

.method public final onFreeRideClicked()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/a;->proceedFreeRide()V

    :cond_0
    return-void
.end method

.method public final onInitDefaults()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->initScrollGestures()V

    .line 81
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/sideMenu/c;)V

    :cond_0
    return-void
.end method

.method public final onItemClick(ILcab/snapp/passenger/data/models/SideMenuData;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/sideMenu/a;

    .line 182
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedExit()V

    .line 10148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedAbout()V

    .line 8148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_2
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedSettings()V

    .line 9148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_3
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedSupport()V

    .line 7148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_4
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedMessages()V

    .line 6148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_5
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedFavorites()V

    .line 5148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_6
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedRideHistory()V

    .line 4148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_7
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedTransactions()V

    .line 3148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_8
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedProfile()V

    .line 2148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void

    :pswitch_9
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/a;->proceedAddCredit()V

    .line 1148
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoadingSideMenu(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/SideMenuData;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    if-nez v1, :cond_1

    .line 102
    new-instance v1, Lcab/snapp/passenger/a/m;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    xor-int/lit8 v7, p3, 0x1

    move-object v2, v1

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcab/snapp/passenger/a/m;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZLcab/snapp/passenger/a/m$e;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    goto :goto_0

    :cond_1
    xor-int/lit8 p3, p3, 0x1

    .line 106
    invoke-virtual {v1, p1, p2, p3}, Lcab/snapp/passenger/a/m;->updateData(Ljava/lang/String;ZZ)V

    .line 108
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->loadSideMenuItems(Lcab/snapp/passenger/a/m;)V

    return-void
.end method

.method public final onMenuIsOpened()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->hideSoftKeyboard()V

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->scrollToTop()V

    :cond_0
    return-void
.end method

.method public final onSnappFoodClicked()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/a;->proceedSnappFood()V

    :cond_0
    return-void
.end method

.method public final onUpdateData(Ljava/lang/String;ZZ)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    if-eqz v0, :cond_0

    xor-int/lit8 p3, p3, 0x1

    .line 122
    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/a/m;->updateData(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final setSideMenuAdapter(Lcab/snapp/passenger/a/m;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    return-void
.end method

.method public final updateCredit(J)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/c;->b:Lcab/snapp/passenger/a/m;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/a/m;->updateCredit(J)V

    :cond_0
    return-void
.end method
