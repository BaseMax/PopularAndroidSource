.class public final Lc/c/a/p/z;
.super Ljava/lang/Object;
.source "SendActionLogsWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/z;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/a;",
            ">;)",
            "Lc/c/a/p/z;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/z;

    invoke-direct {v0, p0}, Lc/c/a/p/z;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/a;",
            ">;)",
            "Lc/c/a/p/y;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/y;

    invoke-direct {v0, p0}, Lc/c/a/p/y;-><init>(Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/y;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/z;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/z;->b(Lg/a/a;)Lc/c/a/p/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/z;->get()Lc/c/a/p/y;

    move-result-object v0

    return-object v0
.end method
