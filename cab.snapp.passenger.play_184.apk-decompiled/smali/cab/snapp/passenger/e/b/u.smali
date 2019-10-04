.class public final Lcab/snapp/passenger/e/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/c/g;",
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
            "Lcab/snapp/passenger/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/e/b/u;->a:Lcab/snapp/passenger/e/b/d;

    .line 40
    iput-object p2, p0, Lcab/snapp/passenger/e/b/u;->b:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcab/snapp/passenger/e/b/u;->c:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcab/snapp/passenger/e/b/u;->d:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcab/snapp/passenger/e/b/u;->e:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcab/snapp/passenger/e/b/u;->f:Ljavax/inject/Provider;

    .line 45
    iput-object p7, p0, Lcab/snapp/passenger/e/b/u;->g:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v8, Lcab/snapp/passenger/e/b/u;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcab/snapp/passenger/e/b/u;-><init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/c/g;
    .locals 7

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/e/b/u;->a:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/u;->b:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/c/b;

    iget-object v2, p0, Lcab/snapp/passenger/e/b/u;->c:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/c/e;

    iget-object v3, p0, Lcab/snapp/passenger/e/b/u;->d:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/b/a;

    iget-object v4, p0, Lcab/snapp/passenger/e/b/u;->e:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v5, p0, Lcab/snapp/passenger/e/b/u;->f:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcab/snapp/b;

    iget-object v6, p0, Lcab/snapp/passenger/e/b/u;->g:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/f/b/b/c;

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcab/snapp/passenger/e/b/d;->provideSnappRideDataManager(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/b/a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/b;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/c/g;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/u;->get()Lcab/snapp/passenger/c/g;

    move-result-object v0

    return-object v0
.end method
