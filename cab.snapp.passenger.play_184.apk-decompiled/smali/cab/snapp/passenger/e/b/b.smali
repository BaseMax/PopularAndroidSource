.class public final Lcab/snapp/passenger/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/f/b/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/a;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/a;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/a;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/e/b/b;->a:Lcab/snapp/passenger/e/b/a;

    .line 18
    iput-object p2, p0, Lcab/snapp/passenger/e/b/b;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/a;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/a;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcab/snapp/passenger/e/b/b;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/e/b/b;-><init>(Lcab/snapp/passenger/e/b/a;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/f/b/b/c;
    .locals 2

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/e/b/b;->a:Lcab/snapp/passenger/e/b/a;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/b;->b:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/e/b/a;->provideReportHelper(Landroid/app/Application;)Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/b;->get()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    return-object v0
.end method
