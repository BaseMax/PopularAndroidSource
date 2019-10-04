.class public final Lcab/snapp/passenger/e/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/d;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcab/snapp/passenger/e/b/q;->a:Lcab/snapp/passenger/e/b/d;

    .line 19
    iput-object p2, p0, Lcab/snapp/passenger/e/b/q;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;)",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/c/d;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcab/snapp/passenger/e/b/q;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/e/b/q;-><init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/c/d;
    .locals 2

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/e/b/q;->a:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/q;->b:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/e/b/d;->provideSnappGroupDataManager(Lcab/snapp/passenger/data_access_layer/a/d;)Lcab/snapp/passenger/c/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/q;->get()Lcab/snapp/passenger/c/d;

    move-result-object v0

    return-object v0
.end method
