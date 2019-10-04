.class public final Lcab/snapp/passenger/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/e/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/e/a/b$b;,
        Lcab/snapp/passenger/e/a/b$a;
    }
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcab/snapp/passenger/e/a/b$a;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    iget-object v0, p1, Lcab/snapp/passenger/e/a/b$a;->a:Lcab/snapp/passenger/e/b/a;

    .line 1213
    invoke-static {v0}, Lcab/snapp/passenger/e/b/c;->create(Lcab/snapp/passenger/e/b/a;)Ldagger/a/b;

    move-result-object v0

    invoke-static {v0}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 2418
    iget-object v0, p1, Lcab/snapp/passenger/e/a/b$a;->b:Landroid/app/Application;

    .line 1214
    invoke-static {v0}, Ldagger/a/c;->create(Ljava/lang/Object;)Ldagger/a/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 3418
    iget-object v0, p1, Lcab/snapp/passenger/e/a/b$a;->a:Lcab/snapp/passenger/e/b/a;

    .line 1217
    iget-object v1, p0, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcab/snapp/passenger/e/b/b;->create(Lcab/snapp/passenger/e/b/a;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object v0

    .line 1216
    invoke-static {v0}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 4418
    iget-object p1, p1, Lcab/snapp/passenger/e/a/b$a;->c:Ljava/lang/Class;

    .line 1219
    invoke-static {p1}, Ldagger/a/c;->create(Ljava/lang/Object;)Ldagger/a/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b;->d:Ljavax/inject/Provider;

    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/passenger/e/a/b$a;B)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcab/snapp/passenger/e/a/b;-><init>(Lcab/snapp/passenger/e/a/b$a;)V

    return-void
.end method

.method public static builder()Lcab/snapp/passenger/e/a/a$a;
    .locals 2

    .line 207
    new-instance v0, Lcab/snapp/passenger/e/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/passenger/e/a/b$a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final getDataManagerComponent(Lcab/snapp/passenger/e/b/d;)Lcab/snapp/passenger/e/a/c;
    .locals 2

    .line 304
    new-instance v0, Lcab/snapp/passenger/e/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcab/snapp/passenger/e/a/b$b;-><init>(Lcab/snapp/passenger/e/a/b;Lcab/snapp/passenger/e/b/d;B)V

    return-object v0
.end method

.method public final inject(Lcab/snapp/passenger/units/credit/c;)V
    .locals 1

    .line 5373
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5374
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5373
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/credit/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/credit/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_address/c;)V
    .locals 1

    .line 5380
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5381
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5380
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_address/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_bar/c;)V
    .locals 1

    .line 5386
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5387
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5386
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_bar/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_bar/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;)V
    .locals 1

    .line 5361
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5362
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5361
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;Lcab/snapp/passenger/f/o;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 1

    .line 5309
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5310
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5309
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Lcab/snapp/passenger/f/o;)V

    .line 5311
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5312
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5311
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/main/d;)V
    .locals 1

    .line 5344
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5345
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5344
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/e;->injectShowcaseHelper(Lcab/snapp/passenger/units/main/d;Lcab/snapp/passenger/f/o;)V

    .line 5346
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5347
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5346
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/e;->injectReportManagerHelper(Lcab/snapp/passenger/units/main/d;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 1

    .line 5352
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5353
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5352
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/mainheader/c;Lcab/snapp/passenger/f/o;)V

    .line 5354
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5355
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5354
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/mainheader/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/payment/c;)V
    .locals 1

    .line 5317
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5318
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5317
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/payment/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/phone_verification/c;)V
    .locals 1

    .line 5393
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5394
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5393
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/phone_verification/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/phone_verification/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 1

    .line 5400
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5401
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5400
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/request_ride_waiting/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_history_details/c;)V
    .locals 1

    .line 5407
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5408
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5407
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_history_details/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_history_details/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_options/c;)V
    .locals 1

    .line 5330
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5331
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5330
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_options/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/search/c;)V
    .locals 1

    .line 5336
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5337
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5336
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/search/c;Lcab/snapp/passenger/f/o;)V

    .line 5338
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5339
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5338
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/d;->injectReportManagerHelper(Lcab/snapp/passenger/units/search/c;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/second_destination/d;)V
    .locals 1

    .line 5324
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5325
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5324
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/e;->injectReportManagerHelper(Lcab/snapp/passenger/units/second_destination/d;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/sideMenu/c;)V
    .locals 1

    .line 5367
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 5368
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 5367
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/sideMenu/c;Lcab/snapp/passenger/f/o;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/tour/e;)V
    .locals 1

    .line 5413
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 5414
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 5413
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/tour/f;->injectReportManagerHelper(Lcab/snapp/passenger/units/tour/e;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method
