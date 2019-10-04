.class public final Lc/c/a/n/b/a/f;
.super Ljava/lang/Object;
.source "MoreArticleViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/b/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/a/f;

    invoke-direct {v0}, Lc/c/a/n/b/a/f;-><init>()V

    sput-object v0, Lc/c/a/n/b/a/f;->a:Lc/c/a/n/b/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/n/b/a/f;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/n/b/a/f;->a:Lc/c/a/n/b/a/f;

    return-object v0
.end method

.method public static b()Lc/c/a/n/b/a/e;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/a/e;

    invoke-direct {v0}, Lc/c/a/n/b/a/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/b/a/e;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/n/b/a/f;->b()Lc/c/a/n/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/b/a/f;->get()Lc/c/a/n/b/a/e;

    move-result-object v0

    return-object v0
.end method
