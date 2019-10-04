.class public final Lc/c/a/c/d/e;
.super Ljava/lang/Object;
.source "LocalReferrer.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/d/m;

    invoke-direct {v0}, Lc/e/d/m;-><init>()V

    invoke-virtual {v0}, Lc/e/d/p;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonArray().toString()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lc/c/a/c/d/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/c/d/e;->a:Ljava/lang/String;

    return-object v0
.end method
