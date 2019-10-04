.class public final Lcab/snapp/passenger/e/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/d;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/e/b/t;->a:Lcab/snapp/passenger/e/b/d;

    .line 28
    iput-object p2, p0, Lcab/snapp/passenger/e/b/t;->b:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcab/snapp/passenger/e/b/t;->c:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcab/snapp/passenger/e/b/t;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/c/f;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcab/snapp/passenger/e/b/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcab/snapp/passenger/e/b/t;-><init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/c/f;
    .locals 4

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/e/b/t;->a:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/t;->b:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/c/b;

    iget-object v2, p0, Lcab/snapp/passenger/e/b/t;->c:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v3, p0, Lcab/snapp/passenger/e/b/t;->d:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/f/b/b/c;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/e/b/d;->provideSnappProfileDataManager(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/c/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/t;->get()Lcab/snapp/passenger/c/f;

    move-result-object v0

    return-object v0
.end method
