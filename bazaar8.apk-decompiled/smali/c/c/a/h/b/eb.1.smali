.class public final Lc/c/a/h/b/eb;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideHttpLoggingInterceptorFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Ya;


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Ya;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/eb;->a:Lc/c/a/h/b/Ya;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Ya;)Lc/c/a/h/b/eb;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/eb;

    invoke-direct {v0, p0}, Lc/c/a/h/b/eb;-><init>(Lc/c/a/h/b/Ya;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/Ya;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/h/b/eb;->c(Lc/c/a/h/b/Ya;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/h/b/Ya;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/Ya;->b()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/eb;->get()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/eb;->a:Lc/c/a/h/b/Ya;

    invoke-static {v0}, Lc/c/a/h/b/eb;->b(Lc/c/a/h/b/Ya;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method
