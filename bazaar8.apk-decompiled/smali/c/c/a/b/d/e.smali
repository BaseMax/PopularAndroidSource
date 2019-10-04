.class public final Lc/c/a/b/d/e;
.super Ljava/lang/Object;
.source "DownloadStateManager_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/b/d/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/b/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/d/e;

    invoke-direct {v0}, Lc/c/a/b/d/e;-><init>()V

    sput-object v0, Lc/c/a/b/d/e;->a:Lc/c/a/b/d/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/b/d/e;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/b/d/e;->a:Lc/c/a/b/d/e;

    return-object v0
.end method

.method public static b()Lc/c/a/b/d/d;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/d/d;

    invoke-direct {v0}, Lc/c/a/b/d/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/b/d/d;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/b/d/e;->b()Lc/c/a/b/d/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/d/e;->get()Lc/c/a/b/d/d;

    move-result-object v0

    return-object v0
.end method
