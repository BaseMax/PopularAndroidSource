.class public final Lcab/snapp/passenger/units/favorite_add_address/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
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
            "Lcab/snapp/passenger/c/b;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/a;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/a;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/a;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSnappConfigDataManager(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;->a:Lcab/snapp/passenger/c/b;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/a;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/a;->injectMembers(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;)V

    return-void
.end method