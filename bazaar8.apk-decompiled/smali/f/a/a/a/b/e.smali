.class public Lf/a/a/a/b/e;
.super Lf/a/a/a/b;
.source "PreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/b/f;->a(Lf/a/a/e/g;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lf/a/a/e/g;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lf/a/a/a/b/f;


# direct methods
.method public constructor <init>(Lf/a/a/a/b/f;Lf/a/a/e/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/b/e;->f:Lf/a/a/a/b/f;

    iput-object p2, p0, Lf/a/a/a/b/e;->d:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/a/b/e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lf/a/a/a/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf/a/a/a/b/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lf/a/a/a/b/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    new-instance v0, Lf/a/a/c/b/o;

    iget-object v1, p0, Lf/a/a/a/b/e;->d:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/a/b/e;->e:Ljava/lang/String;

    sget-object v3, Lf/a/a/a/b/f;->a:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lf/a/a/c/b/o;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lf/a/a/a/b/d;

    invoke-direct {v1, p0}, Lf/a/a/a/b/d;-><init>(Lf/a/a/a/b/e;)V

    invoke-virtual {v0, v1}, Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method
