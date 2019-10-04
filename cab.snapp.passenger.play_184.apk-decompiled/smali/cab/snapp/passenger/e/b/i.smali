.class public final Lcab/snapp/passenger/e/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Ljava/util/List<",
        "Lokhttp3/Interceptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/d;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/e/b/i;->a:Lcab/snapp/passenger/e/b/d;

    .line 25
    iput-object p2, p0, Lcab/snapp/passenger/e/b/i;->b:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcab/snapp/passenger/e/b/i;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;)",
            "Ldagger/a/b<",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcab/snapp/passenger/e/b/i;

    invoke-direct {v0, p0, p1, p2}, Lcab/snapp/passenger/e/b/i;-><init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/i;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/e/b/i;->a:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/i;->b:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/f/b/b/c;

    iget-object v2, p0, Lcab/snapp/passenger/e/b/i;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/authenticator/c;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/e/b/d;->provideInterceptors(Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/authenticator/c;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
