.class final Lcab/snapp/passenger/units/search/c$1$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/search/c$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/search/c$1;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/search/c$1;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    iget-object v1, v1, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    new-instance v2, Lcab/snapp/passenger/units/search/-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A;

    invoke-direct {v2, v1}, Lcab/snapp/passenger/units/search/-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A;-><init>(Lcab/snapp/passenger/units/search/c;)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    iget-object v0, v0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/c;->i(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    iget-object v0, v0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/c;->j(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    iget-object v1, v1, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    invoke-static {v1}, Lcab/snapp/passenger/units/search/c;->h(Lcab/snapp/passenger/units/search/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/search/a;->handleSearch(Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c$1$1;->a:Lcab/snapp/passenger/units/search/c$1;

    iget-object v0, v0, Lcab/snapp/passenger/units/search/c$1;->b:Lcab/snapp/passenger/units/search/c;

    iget-object v0, v0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->TECHNICAL:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->DATABASE:Ljava/lang/String;

    const-string v3, "autocomplete request to google"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
