.class public final Lc/c/a/p/x;
.super Ljava/lang/Object;
.source "ReportCommentWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/x;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/p/x;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/p/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)",
            "Lc/c/a/p/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/x;

    invoke-direct {v0, p0, p1}, Lc/c/a/p/x;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/p/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)",
            "Lc/c/a/p/w;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/w;

    invoke-direct {v0, p0, p1}, Lc/c/a/p/w;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/w;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/p/x;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/p/x;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/p/x;->b(Lg/a/a;Lg/a/a;)Lc/c/a/p/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/x;->get()Lc/c/a/p/w;

    move-result-object v0

    return-object v0
.end method
