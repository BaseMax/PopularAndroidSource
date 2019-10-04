.class public final Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "InterestsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/browse/interests/InterestsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

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
            "Lcom/ebay/mobile/browse/interests/InterestsActivity;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/browse/interests/InterestsActivity;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    .line 25
    invoke-static {p1, v0}, Lcom/ebay/mobile/search/SearchResultActivity_MembersInjector;->injectDispatchingAndroidInjector(Lcom/ebay/mobile/search/SearchResultActivity;Ldagger/android/DispatchingAndroidInjector;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/ebay/mobile/browse/interests/InterestsActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/browse/interests/InterestsActivity_MembersInjector;->injectMembers(Lcom/ebay/mobile/browse/interests/InterestsActivity;)V

    return-void
.end method
