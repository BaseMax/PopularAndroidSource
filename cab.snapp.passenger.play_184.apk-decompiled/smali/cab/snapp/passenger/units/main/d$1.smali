.class final Lcab/snapp/passenger/units/main/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/units/main/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/d;->viewIsReady()V
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

    .line 153
    iput-object p1, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCollapsed()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 188
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->k(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->l(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->handleJekBottomSheetClosed()V

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->m(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->checkForUpdateBanner()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->n(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->o(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->unlockDrawer()V

    :cond_1
    return-void
.end method

.method public final onExpanded()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 158
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->b(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->handleJekBottomSheetOpened()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->c(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->d(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->lockDrawer()V

    .line 165
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->e(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideUpdateBanner()V

    :cond_1
    return-void
.end method

.method public final onHalfExpanded()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->f(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->g(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->handleJekBottomSheetOpened()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->h(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->i(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->lockDrawer()V

    .line 180
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->j(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideUpdateBanner()V

    :cond_1
    return-void
.end method

.method public final onHidden()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/units/main/d;Z)Z

    .line 205
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->p(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->q(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->handleJekBottomSheetClosed()V

    .line 208
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->r(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->checkForUpdateBanner()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->s(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$1;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->t(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->unlockDrawer()V

    :cond_1
    return-void
.end method
