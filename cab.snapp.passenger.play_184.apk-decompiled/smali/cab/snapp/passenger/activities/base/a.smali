.class public final Lcab/snapp/passenger/activities/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/activities/base/BaseActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcab/snapp/passenger/activities/base/a;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/activities/base/BaseActivity;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcab/snapp/passenger/activities/base/a;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/activities/base/a;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSnappLocationDataManager(Lcab/snapp/passenger/activities/base/BaseActivity;Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/activities/base/BaseActivity;->b:Lcab/snapp/passenger/c/e;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/activities/base/BaseActivity;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/activities/base/a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/base/a;->injectSnappLocationDataManager(Lcab/snapp/passenger/activities/base/BaseActivity;Lcab/snapp/passenger/c/e;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcab/snapp/passenger/activities/base/BaseActivity;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/base/a;->injectMembers(Lcab/snapp/passenger/activities/base/BaseActivity;)V

    return-void
.end method
