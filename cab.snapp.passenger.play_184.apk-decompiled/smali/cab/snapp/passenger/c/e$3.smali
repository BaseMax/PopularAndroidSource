.class final Lcab/snapp/passenger/c/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/c/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcab/snapp/passenger/c/e;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/c/e;Z)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    iput-boolean p2, p0, Lcab/snapp/passenger/c/e$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionDenied(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 620
    iget-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {p1}, Lcab/snapp/passenger/c/e;->b(Lcab/snapp/passenger/c/e;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    .line 623
    iget-object v0, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {v0}, Lcab/snapp/passenger/c/e;->e(Lcab/snapp/passenger/c/e;)Z

    move-result v0

    const-string v1, "gps"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 625
    iget-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {p1}, Lcab/snapp/passenger/c/e;->a(Lcab/snapp/passenger/c/e;)Lio/reactivex/j/b;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-direct {v0, v1, v2, v2}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 629
    iget-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {p1}, Lcab/snapp/passenger/c/e;->b(Lcab/snapp/passenger/c/e;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "HAS_PERMANENTLY_DENIED_LOCATION_REQUEST"

    .line 630
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 632
    iget-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {p1}, Lcab/snapp/passenger/c/e;->a(Lcab/snapp/passenger/c/e;)Lio/reactivex/j/b;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-direct {v0, v1, v2}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void

    .line 636
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {p1}, Lcab/snapp/passenger/c/e;->a(Lcab/snapp/passenger/c/e;)Lio/reactivex/j/b;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-direct {v0, v1, v2}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPermissionGranted()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {v0}, Lcab/snapp/passenger/c/e;->b(Lcab/snapp/passenger/c/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/c/e;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HAS_PERMANENTLY_DENIED_LOCATION_REQUEST"

    .line 604
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 607
    iget-boolean v0, p0, Lcab/snapp/passenger/c/e$3;->a:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {v0}, Lcab/snapp/passenger/c/e;->c(Lcab/snapp/passenger/c/e;)V

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/e$3;->b:Lcab/snapp/passenger/c/e;

    invoke-static {v0}, Lcab/snapp/passenger/c/e;->d(Lcab/snapp/passenger/c/e;)V

    return-void
.end method
