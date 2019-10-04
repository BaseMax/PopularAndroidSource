.class final Lcab/snapp/passenger/units/search/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/search/c;->onReadyToSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcab/snapp/passenger/units/search/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/search/c;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    if-nez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->a(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->b(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/a;->handleEmptyInput()V

    :cond_0
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcab/snapp/passenger/units/search/c$1;->a:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcab/snapp/passenger/units/search/c$1;->a:Z

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    .line 1432
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1436
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v1

    .line 1437
    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v2

    const-string v3, "[searching]"

    if-nez v2, :cond_3

    .line 1439
    iget-object v2, v0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v5, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_3
    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1443
    iget-object v0, v0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcab/snapp/passenger/units/search/c$1;->a:Z

    .line 131
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/c;->c(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/c;->d(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->handleEmptyInput()V

    .line 137
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/search/c;->a(Lcab/snapp/passenger/units/search/c;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/c;->e(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_7

    .line 143
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideEmptyView()V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 147
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideDeleteInputTextBtn()V

    .line 148
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showVoiceSearchBtn()V

    .line 149
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->f(Lcab/snapp/passenger/units/search/c;)V

    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideVoiceSearchBtn()V

    .line 154
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showDeleteInputTextBtn()V

    .line 158
    :cond_7
    :goto_1
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->g(Lcab/snapp/passenger/units/search/c;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 160
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->g(Lcab/snapp/passenger/units/search/c;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 163
    :cond_8
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->h(Lcab/snapp/passenger/units/search/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_a

    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->h(Lcab/snapp/passenger/units/search/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_9

    goto :goto_2

    .line 168
    :cond_9
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/c;->a(Lcab/snapp/passenger/units/search/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 169
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/c;->g(Lcab/snapp/passenger/units/search/c;)Ljava/util/Timer;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/search/c$1$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/search/c$1$1;-><init>(Lcab/snapp/passenger/units/search/c$1;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
