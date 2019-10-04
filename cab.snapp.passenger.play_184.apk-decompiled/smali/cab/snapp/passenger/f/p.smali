.class public final Lcab/snapp/passenger/f/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic b(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic c(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic d(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic lambda$5Z2eGmPwzy0ZqykpoktOmrPXQ9E(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->d(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$7bxaKpQtI_du8vBQJxr4XwYNFPs(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$UPL7lsYRcRGsX3mORjEsH0vzQzo(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$XrYi9S9fsyCFUfdSP9ayGM5277o(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$Z-kokSBCYEGVUXh2X6wWIoovoOw(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->b(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$m3ruBD2jFx2FdmIpc9g3-AbU_KQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$ozMUnuoUnjXEz0-uta77WxmNtsQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$w_dfGty44EB5HdPIgSFsVb0wD8o(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/p;->c(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static requestLogDestination(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    cmpl-double v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcab/snapp/passenger/data_access_layer/a/d;->logSmappDestination(Ljava/lang/String;DD)Lio/reactivex/z;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/z;->singleOrError()Lio/reactivex/ai;

    move-result-object p0

    sget-object p1, Lcab/snapp/passenger/f/-$$Lambda$p$w_dfGty44EB5HdPIgSFsVb0wD8o;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$w_dfGty44EB5HdPIgSFsVb0wD8o;

    sget-object p2, Lcab/snapp/passenger/f/-$$Lambda$p$7bxaKpQtI_du8vBQJxr4XwYNFPs;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$7bxaKpQtI_du8vBQJxr4XwYNFPs;

    .line 54
    invoke-virtual {p0, p1, p2}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestLogOrigin(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    cmpl-double v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcab/snapp/passenger/data_access_layer/a/d;->logSmappOrigin(Ljava/lang/String;DD)Lio/reactivex/z;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/z;->singleOrError()Lio/reactivex/ai;

    move-result-object p0

    sget-object p1, Lcab/snapp/passenger/f/-$$Lambda$p$5Z2eGmPwzy0ZqykpoktOmrPXQ9E;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$5Z2eGmPwzy0ZqykpoktOmrPXQ9E;

    sget-object p2, Lcab/snapp/passenger/f/-$$Lambda$p$UPL7lsYRcRGsX3mORjEsH0vzQzo;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$UPL7lsYRcRGsX3mORjEsH0vzQzo;

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestLogSecondDestination(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V
    .locals 0

    .line 71
    invoke-static/range {p0 .. p5}, Lcab/snapp/passenger/f/p;->requestLogDestination(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V

    return-void
.end method

.method public static requestLogSelectDestinationItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->logSmappSelectedDestinationItem(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/z;->singleOrError()Lio/reactivex/ai;

    move-result-object p0

    sget-object p1, Lcab/snapp/passenger/f/-$$Lambda$p$XrYi9S9fsyCFUfdSP9ayGM5277o;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$XrYi9S9fsyCFUfdSP9ayGM5277o;

    sget-object v0, Lcab/snapp/passenger/f/-$$Lambda$p$m3ruBD2jFx2FdmIpc9g3-AbU_KQ;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$m3ruBD2jFx2FdmIpc9g3-AbU_KQ;

    .line 108
    invoke-virtual {p0, p1, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    return-void
.end method

.method public static requestLogSelectOriginItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->logSmappSelectedOriginItem(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/z;->singleOrError()Lio/reactivex/ai;

    move-result-object p0

    sget-object p1, Lcab/snapp/passenger/f/-$$Lambda$p$Z-kokSBCYEGVUXh2X6wWIoovoOw;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$Z-kokSBCYEGVUXh2X6wWIoovoOw;

    sget-object v0, Lcab/snapp/passenger/f/-$$Lambda$p$ozMUnuoUnjXEz0-uta77WxmNtsQ;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$p$ozMUnuoUnjXEz0-uta77WxmNtsQ;

    .line 89
    invoke-virtual {p0, p1, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    return-void
.end method

.method public static requestLogSelectSecondDestinationItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-static {p0, p1}, Lcab/snapp/passenger/f/p;->requestLogSelectDestinationItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V

    return-void
.end method
