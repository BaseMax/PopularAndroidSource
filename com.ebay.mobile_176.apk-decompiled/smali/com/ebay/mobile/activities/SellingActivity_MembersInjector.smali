.class public final Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SellingActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/activities/SellingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final fragmentInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
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
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/activities/SellingActivity;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFragmentInjector(Lcom/ebay/mobile/activities/SellingActivity;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/activities/SellingActivity;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/activities/SellingActivity;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/activities/SellingActivity;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    invoke-static {p1, v0}, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;->injectFragmentInjector(Lcom/ebay/mobile/activities/SellingActivity;Ldagger/android/DispatchingAndroidInjector;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/ebay/mobile/activities/SellingActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SellingActivity_MembersInjector;->injectMembers(Lcom/ebay/mobile/activities/SellingActivity;)V

    return-void
.end method
