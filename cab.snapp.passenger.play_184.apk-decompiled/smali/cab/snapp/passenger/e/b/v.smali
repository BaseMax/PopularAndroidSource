.class public final Lcab/snapp/passenger/e/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/d;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcab/snapp/passenger/e/b/v;->a:Lcab/snapp/passenger/e/b/d;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            ")",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/c/h;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcab/snapp/passenger/e/b/v;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/e/b/v;-><init>(Lcab/snapp/passenger/e/b/d;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/c/h;
    .locals 2

    .line 18
    iget-object v0, p0, Lcab/snapp/passenger/e/b/v;->a:Lcab/snapp/passenger/e/b/d;

    .line 19
    invoke-virtual {v0}, Lcab/snapp/passenger/e/b/d;->provideSnappSearchDataManager()Lcab/snapp/passenger/c/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/v;->get()Lcab/snapp/passenger/c/h;

    move-result-object v0

    return-object v0
.end method
