.class public interface abstract Lc/b/a/c/c/n;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lc/b/a/c/c/n;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lc/b/a/c/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/c/m;

    invoke-direct {v0}, Lc/b/a/c/c/m;-><init>()V

    sput-object v0, Lc/b/a/c/c/n;->a:Lc/b/a/c/c/n;

    .line 2
    new-instance v0, Lc/b/a/c/c/p$a;

    invoke-direct {v0}, Lc/b/a/c/c/p$a;-><init>()V

    invoke-virtual {v0}, Lc/b/a/c/c/p$a;->a()Lc/b/a/c/c/p;

    move-result-object v0

    sput-object v0, Lc/b/a/c/c/n;->b:Lc/b/a/c/c/n;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
