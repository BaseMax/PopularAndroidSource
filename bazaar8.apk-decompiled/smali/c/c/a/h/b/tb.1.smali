.class public final Lc/c/a/h/b/tb;
.super Ljava/lang/Object;
.source "RetrofitModule_ProvideAuthenticationServiceFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/a/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/mb;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Ll/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/mb;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/mb;",
            "Lg/a/a<",
            "Lc/c/a/g/c;",
            ">;",
            "Lg/a/a<",
            "Ll/a/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/tb;->a:Lc/c/a/h/b/mb;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/tb;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/h/b/tb;->c:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/mb;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/a/b/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/a/b/d;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/e/d/a/b/d;

    return-object p0
.end method

.method public static a(Lc/c/a/h/b/mb;Lg/a/a;Lg/a/a;)Lc/c/a/h/b/tb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/mb;",
            "Lg/a/a<",
            "Lc/c/a/g/c;",
            ">;",
            "Lg/a/a<",
            "Ll/a/a/a;",
            ">;)",
            "Lc/c/a/h/b/tb;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/h/b/tb;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/h/b/tb;-><init>(Lc/c/a/h/b/mb;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/mb;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/a/b/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/mb;",
            "Lg/a/a<",
            "Lc/c/a/g/c;",
            ">;",
            "Lg/a/a<",
            "Ll/a/a/a;",
            ">;)",
            "Lc/c/a/e/d/a/b/d;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/g/c;

    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll/a/a/a;

    invoke-static {p0, p1, p2}, Lc/c/a/h/b/tb;->a(Lc/c/a/h/b/mb;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/a/b/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/a/b/d;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/tb;->a:Lc/c/a/h/b/mb;

    iget-object v1, p0, Lc/c/a/h/b/tb;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/h/b/tb;->c:Lg/a/a;

    invoke-static {v0, v1, v2}, Lc/c/a/h/b/tb;->b(Lc/c/a/h/b/mb;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/tb;->get()Lc/c/a/e/d/a/b/d;

    move-result-object v0

    return-object v0
.end method
